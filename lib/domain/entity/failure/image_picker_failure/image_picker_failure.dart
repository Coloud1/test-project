import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

class ImagePickerFailure implements FeatureFailure {
  const ImagePickerFailure();
}

class ImagePickerCameraAccessRestricted extends ImagePickerFailure {
  const ImagePickerCameraAccessRestricted();
}

class ImagePickerCameraAccessDenied extends ImagePickerFailure {
  const ImagePickerCameraAccessDenied();
}

class ImagePickerPhotoAccessDenied extends ImagePickerFailure {
  const ImagePickerPhotoAccessDenied();
}

class ImagePickerUnknown extends ImagePickerFailure {
  final String error;

  const ImagePickerUnknown({required this.error});
}
