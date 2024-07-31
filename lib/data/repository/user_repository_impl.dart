import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/failure/user_failure/user_failure.dart';
import 'package:test_prj_ivan/domain/entity/user/user_changes.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';
import 'package:test_prj_ivan/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _auth;

  UserRepositoryImpl({required FirebaseAuth auth}) : _auth = auth {
    _initListener();
  }

  late final Stream<UserChanges> _innerStream;

  @override
  Stream<UserChanges> get listen => _innerStream;

  void _initListener() {
    _innerStream = _auth.userChanges().map<UserChanges>((user) {
      if (user == null) {
        return const AuthorizedUserSignedOut();
      } else {
        return AuthorizedUserChanged(
          user: UserEntity(
            providerId: '',
            displayName: user.displayName ?? '',
            email: user.email ?? '',
            photoURL: user.photoURL ?? '',
            uid: user.uid,
          ),
        );
      }
    });
    _auth.userChanges().listen((user) {});
  }

  @override
  Future<Result<UserEntity>> getUser() async {
    final user = _auth.currentUser;

    if (user == null) {
      return const Result.error(failure: UserSignedOutFailure());
    }

    return Result.success(
      UserEntity(
        providerId: '',
        displayName: user.displayName ?? '',
        email: user.email ?? '',
        photoURL: user.photoURL ?? '',
        uid: user.uid,
      ),
    );
  }

  @override
  Future<Result<OperationStatus>> updateUser() async {
    throw UnimplementedError();
  }

  @override
  Future<Result<OperationStatus>> deleteUser() {
    throw UnimplementedError();
  }

  @override
  Future<Result<OperationStatus>> signOut() async {
    throw Exception();
    await _auth.signOut();
  }
}
