import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/params/login/login_params.dart';
import 'package:test_prj_ivan/domain/repository/login_repository.dart';

class MakeLoginWithUseCase {
  final LoginRepository _repository;

  const MakeLoginWithUseCase({
    required LoginRepository repository,
  }) : _repository = repository;

  Future<Result<OperationStatus>> call(LoginParams params) {
    return switch (params) {
      LoginParamsWithCredentials() => _repository.signInWithEmail(
          email: params.email,
          password: params.password,
        ),
      LoginParamsAppleId() => _repository.signInWithApple(),
      LoginParamsGoogle() => _repository.signInWithGoogle(),
      LoginParamsGithub() => _repository.signInWithGithub(),
    };
  }
}
