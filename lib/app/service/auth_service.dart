import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/params/login/login_params.dart';
import 'package:test_prj_ivan/domain/repository/login_repository.dart';

class AuthService {
  final LoginRepository _loginRepository;

  const AuthService({
    required LoginRepository loginRepository,
  }) : _loginRepository = loginRepository;

  Future<Result<OperationStatus>> signInWith({
    required LoginParams params,
  }) async {
    return switch (params) {
      LoginParamsWithCredentials() => _loginRepository.signInWithEmail(
          email: params.email,
          password: params.password,
        ),
      LoginParamsAppleId() => _loginRepository.signInWithApple(),
      LoginParamsGoogle() => _loginRepository.signInWithGoogle(),
      LoginParamsGithub() => _loginRepository.signInWithGithub(),
      LoginParamsPhone() => _loginRepository.signInWithPhone(
          verificationId: params.verificationId,
          smsCode: params.smsCode,
        ),
    };
  }
}
