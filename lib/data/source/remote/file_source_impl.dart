import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/data/source/remote/file_source.dart';

class FileSourceImpl implements FileSource {
  final FirebaseStorage _firebaseStorage;

  const FileSourceImpl({
    required FirebaseStorage firebaseStorage,
  }) : _firebaseStorage = firebaseStorage;

  @override
  Future<FullMetadata?> uploadAsFile(
    File file, {
    required String collection,
  }) async {
    final result = await _firebaseStorage.ref(collection).putFile(file);
    return result.metadata;
  }

  @override
  Future<OperationStatus> deleteFile({
    required String collection,
    required String fileName,
  }) async {
    await _firebaseStorage.ref(collection).child(fileName).delete();
    return OperationStatus.success;
  }
}
