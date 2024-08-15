import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/file/file_storage_entity.dart';
import 'package:test_prj_ivan/domain/repository/image_repository.dart';

class UploadImageUseCase {
  final ImageRepository _imageRepository;

  const UploadImageUseCase({
    required ImageRepository imageRepository,
  }) : _imageRepository = imageRepository;

  Future<Result<String>> call(FileStorageEntity file) async {
    final uploadResult = await _imageRepository.uploadAsFile(file);

    if (uploadResult.isError) {
      return Result.error(failure: uploadResult.error.failure);
    }

    final getURLResult = await _imageRepository.getFileURL(
      fileName: file.fileName,
      collection: file.photosRef,
    );

    return getURLResult;
  }
}
