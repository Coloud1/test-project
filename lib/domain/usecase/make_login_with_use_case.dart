import 'package:test_prj_ivan/app/service/auth_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/params/login/login_params.dart';

class MakeLoginWithUseCase {
  final AuthService _authService;

  const MakeLoginWithUseCase({
    required AuthService authService,
  }) : _authService = authService;

  Future<Result<OperationStatus>> call(LoginParams params) {
    return _authService.signInWith(params: params);
  }
}
