import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/app/util/map_firebase_auth_exception.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase_auth_failure/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/general/unknown_failure.dart';
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
  }

  @override
  Future<Result<UserEntity>> getUser() async {
    try {
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
    } on FirebaseException catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'getUser');
      return Result.error(failure: UnknownAuthFailure(e.message));
    } catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'getUser');
      return Result.error(failure: UnknownFailure(e, s));
    }
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
    try {
      await _auth.signOut();
      return const Result.success(OperationStatus.success);
    } on FirebaseAuthException catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'signOut');
      return Result.error(
        failure: MapFirebaseAuthException.mapRawStringToFailure(e),
      );
    } catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'signOut');
      return Result.error(failure: UnknownFailure(e, s));
    }
  }
}