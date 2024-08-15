import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';

class UpdateDisplayPhotoUseCase {
  final UserService _userService;

  const UpdateDisplayPhotoUseCase({
    required UserService userService,
  }) : _userService = userService;

  Future<Result<OperationStatus>> call(String url) async {
    return _userService.updateUser(photoURL: url);
  }
}
