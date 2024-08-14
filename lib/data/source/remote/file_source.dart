import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';

abstract interface class FileSource {
  Future<FullMetadata?> uploadAsFile(
    File file, {
    required String collection,
  });

  Future<OperationStatus> deleteFile({
    required String collection,
    required String fileName,
  });
}
