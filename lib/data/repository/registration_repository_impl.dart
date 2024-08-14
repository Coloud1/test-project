import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/data/mapper/firebase/firebase_error_mapper.dart';
import 'package:test_prj_ivan/domain/entity/failure/general/unknown_failure.dart';
import 'package:test_prj_ivan/domain/repository/registration_repository.dart';

class RegistrationRepositoryImpl implements RegistrationRepository {
  final FirebaseAuth _auth;

  const RegistrationRepositoryImpl({required FirebaseAuth auth}) : _auth = auth;

  @override
  Future<Result<OperationStatus>> createAccountWithCredentials({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Result.success(OperationStatus.success);
    } on FirebaseAuthException catch (e, s) {
      logger.crash(
        error: e,
        stackTrace: s,
        reason: 'createAccountWithCredentials',
      );
      return Result.error(
        failure: FirebaseErrorMapper.mapFirebaseAuthExceptionToFailure(e),
      );
    } catch (e, s) {
      return Result.error(failure: UnknownFailure(e, s));
    }
  }
}
