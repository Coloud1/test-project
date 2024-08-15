import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/entity/file/file_storage_entity.dart';
import 'package:test_prj_ivan/domain/usecase/image/pick_image_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/image/update_display_photo_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/image/upload_image_use_case.dart';

class ChangeProfilePhotoUseCase {
  final PickImageUseCase _pickImageUseCase;
  final UploadImageUseCase _uploadImageUseCase;
  final UpdateDisplayPhotoUseCase _updateDisplayPhotoUseCase;
  final UserService _userService;

  const ChangeProfilePhotoUseCase({
    required PickImageUseCase pickImageUseCase,
    required UploadImageUseCase uploadImageUseCase,
    required UpdateDisplayPhotoUseCase updateDisplayPhotoUseCase,
    required UserService userService,
  })  : _pickImageUseCase = pickImageUseCase,
        _uploadImageUseCase = uploadImageUseCase,
        _updateDisplayPhotoUseCase = updateDisplayPhotoUseCase,
        _userService = userService;

  Future<Result<OperationStatus>> call({required bool isGallery}) async {
    final user = await _userService.getUser();
    if (user.isError) {
      return const Result.error(
        failure: UserNotFoundFailure('User not found'),
      );
    }

    final imageResult = await _pickImageUseCase(isGallery: isGallery);

    if (imageResult.isError) {
      return Result.error(failure: imageResult.error.failure);
    }

    final file = imageResult.data;

    final entity = FileStorageEntity(
      fullPath: file.path,
      fileName: user.data.uid,
    );

    final uploadResult = await _uploadImageUseCase(
      entity.updateFileName(user.data.uid),
    );

    if (uploadResult.isError) {
      return Result.error(failure: uploadResult.error.failure);
    }

    final updateDisplayPhotoResult =
        await _updateDisplayPhotoUseCase(uploadResult.data);

    return updateDisplayPhotoResult;
  }
}
