import 'package:test_prj_ivan/app/util/image_picker/image_picker_error_consts.dart';
import 'package:test_prj_ivan/domain/entity/failure/image_picker_failure/image_picker_failure.dart';

final class MapImagePickerErrorToFailure {
  static ImagePickerFailure mapCommonErrorToFailure(String code) {
    switch (code) {
      case ImagePickerErrorConsts.photoAccessDenied:
      case ImagePickerErrorConsts.cameraAccessDenied:
      case ImagePickerErrorConsts.cameraAccessRestricted:
        return const ImagePickerPermissionDenied();
      default:
        return ImagePickerUnknown(error: code);
    }
  }

  const MapImagePickerErrorToFailure();
}
