import 'package:test_prj_ivan/app/util/image_picker/image_picker_error_consts.dart';
import 'package:test_prj_ivan/domain/entity/failure/image_picker_failure/image_picker_failure.dart';

final class MapImagePickerErrorToFailure {
  static ImagePickerFailure mapCommonErrorToFailure(String code) {
    return switch (code) {
      ImagePickerErrorConsts.cameraAccessRestricted =>
        const ImagePickerCameraAccessRestricted(),
      ImagePickerErrorConsts.cameraAccessDenied =>
        const ImagePickerCameraAccessDenied(),
      ImagePickerErrorConsts.photoAccessDenied =>
        const ImagePickerPhotoAccessDenied(),
      _ => ImagePickerUnknown(error: code),
    };
  }

  const MapImagePickerErrorToFailure();
}
