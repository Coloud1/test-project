import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/data/mapper/firebase/firebase_error_mapper.dart';
import 'package:test_prj_ivan/data/source/remote/file_source.dart';
import 'package:test_prj_ivan/domain/entity/failure/general/unknown_failure.dart';
import 'package:test_prj_ivan/domain/entity/file/file_storage_entity.dart';
import 'package:test_prj_ivan/domain/repository/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  final FileSource _source;

  const ImageRepositoryImpl({required FileSource source}) : _source = source;

  @override
  Future<Result<String>> getFileURL({
    required String fileName,
    required String collection,
  }) async {
    try {
      final result = await _source.getFileURL(
        fileName: fileName,
        collection: collection,
      );
      return Result.success(result);
    } on FirebaseException catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'getFileURL');
      return Result.error(
        failure: FirebaseErrorMapper.mapFirebaseStorageExceptionToFailure(e),
      );
    } catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'getFileURL');
      return Result.error(failure: UnknownFailure(e, s));
    }
  }

  @override
  Future<Result<OperationStatus>> uploadAsFile(FileStorageEntity file) async {
    try {
      await _source.uploadAsFile(
        File(file.fullPath),
        collection: file.photosRef,
        name: file.fileName,
      );
      return const Result.success(OperationStatus.success);
    } on FirebaseException catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'uploadAsFile');
      return Result.error(
        failure: FirebaseErrorMapper.mapFirebaseStorageExceptionToFailure(e),
      );
    } catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'uploadAsFile');
      return Result.error(failure: UnknownFailure(e, s));
    }
  }

  @override
  Future<Result<OperationStatus>> deleteFile(String fileName) async {
    try {
      print(fileName);
      await _source.deleteFile(filePath: fileName);
      return const Result.success(OperationStatus.success);
    } on FirebaseException catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'deleteFile');
      return Result.error(
        failure: FirebaseErrorMapper.mapFirebaseStorageExceptionToFailure(e),
      );
    } catch (e, s) {
      logger.crash(error: e, stackTrace: s, reason: 'deleteFile');
      return Result.error(failure: UnknownFailure(e, s));
    }
  }
}
