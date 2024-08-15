import 'package:image_picker/image_picker.dart';
import 'package:test_prj_ivan/app/service/image_picker_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';

class PickImageUseCase {
  final ImagePickerService _imagePickerService;

  const PickImageUseCase({
    required ImagePickerService imagePickerService,
  }) : _imagePickerService = imagePickerService;

  Future<Result<XFile>> call({required bool isGallery}) {
    return _imagePickerService.pickImage(
      isGallery ? ImageSource.gallery : ImageSource.camera,
    );
  }
}
