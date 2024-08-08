import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';

class UpdateDisplayNameUseCase {
  final UserService _userService;

  const UpdateDisplayNameUseCase({
    required UserService userService,
  }) : _userService = userService;

  Future<Result<OperationStatus>> call({required String displayName}) async {
    return _userService.updateUser(displayName: displayName);
  }
}
