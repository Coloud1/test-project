import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/file/file_storage_entity.dart';

abstract interface class ImageRepository {
  Future<Result<String>> uploadAsFile(FileStorageEntity file);

  Future<Result<OperationStatus>> deleteFile(String fileName);
}
