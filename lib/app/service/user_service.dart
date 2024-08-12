import 'dart:async';

import 'package:test_prj_ivan/app/service/session_service/session_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/user/user_changes.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';
import 'package:test_prj_ivan/domain/repository/user_repository.dart';

class UserService {
  final UserRepository _userRepository;
  final SessionService _sessionService;

  StreamSubscription<UserChanges>? _userSubscription;
  late StreamController<UserEntity> _streamController;
  UserEntity? _storedUser;

  UserEntity? get user => _storedUser;

  UserService({
    required UserRepository userRepository,
    required SessionService sessionService,
  })  : _userRepository = userRepository,
        _sessionService = sessionService {
    _init();
  }

  void _init() {
    _streamController = StreamController.broadcast(
      onListen: () async {
        final result = await _userRepository.getUser();
        if (result.success) {
          _streamController.add(result.data);
        }
      },
    );

    _userSubscription = _userRepository.stream.listen(
      (state) {
        if (state is AuthorizedUserChanged) {
          _storedUser = state.user;
          _streamController.add(state.user);
          _sessionService.openSession();
        } else {
          _storedUser = null;
          _sessionService.closeSession();
        }
      },
    );
  }

  Stream<UserEntity> getStream() => _streamController.stream;

  Future<Result<UserEntity>> getUser() async {
    final result = await _userRepository.getUser();
    if (result.success) {
      _storedUser = result.data;
    }

    return _userRepository.getUser();
  }

  Future<Result<OperationStatus>> updateUser({String? displayName}) {
    return _userRepository.updateUser(displayName: displayName);
  }

  Future<Result<OperationStatus>> logOut() async {
    final result = await _userRepository.signOut();
    if (result.success) {
      await _sessionService.closeSession();
    }
    return result;
  }

  void close() {
    _userSubscription?.cancel();
    _streamController.close();
  }
}
