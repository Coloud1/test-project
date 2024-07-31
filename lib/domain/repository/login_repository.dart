import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';

abstract interface class LoginRepository {
  Future<Result<OperationStatus>> signInWithApple();

  Future<Result<OperationStatus>> signInWithGoogle();

  Future<Result<OperationStatus>> signInWithPhone();

  Future<Result<OperationStatus>> signInWithGithub();

  Future<Result<OperationStatus>> signInWithEmail({
    required String email,
    required String password,
  });
}
