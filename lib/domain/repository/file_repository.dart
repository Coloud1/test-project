import 'dart:io';

import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';

abstract interface class FileRepository {
  Future<Result<OperationStatus>> getFile();

  Future<Result<OperationStatus>> uploadFile(File file);

  Future<Result<OperationStatus>> deleteFile();
}
