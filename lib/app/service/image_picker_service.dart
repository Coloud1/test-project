import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/data/mapper/image_picker/map_image_picker_error_to_failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/image_picker_failure/image_picker_failure.dart';

class ImagePickerService {
  final ImagePicker _imagePicker;

  const ImagePickerService({
    required ImagePicker imagePicker,
  }) : _imagePicker = imagePicker;

  Future<Result<XFile>> pickImage(
    ImageSource source, {
    Size? resizeTo,
  }) async {
    try {
      final imageResult = await _imagePicker.pickImage(
        source: source,
        maxHeight: resizeTo?.height ?? 512,
        maxWidth: resizeTo?.width ?? 512,
      );

      if (imageResult == null) {
        return const Result.error(failure: ImagePickerCancelled());
      }

      return Result.success(imageResult);
    } on PlatformException catch (e, s) {
      logger.crash(
        error: e,
        stackTrace: s,
        reason: 'pickImage',
      );
      return Result.error(
        failure: MapImagePickerErrorToFailure.mapCommonErrorToFailure(e.code),
      );
    } catch (e, s) {
      logger.crash(
        error: e,
        stackTrace: s,
        reason: 'pickImage',
      );

      return Result.error(failure: ImagePickerUnknown(error: e.toString()));
    }
  }
}
