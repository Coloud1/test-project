import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

sealed class ImagePickerFailure implements FeatureFailure {
  const ImagePickerFailure();
}

class ImagePickerPermissionDenied extends ImagePickerFailure {
  const ImagePickerPermissionDenied();
}

class ImagePickerCancelled extends ImagePickerFailure {
  const ImagePickerCancelled();
}

class ImagePickerUnknown extends ImagePickerFailure {
  final String error;

  const ImagePickerUnknown({required this.error});
}
