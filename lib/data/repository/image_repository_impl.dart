import 'dart:io';

import 'package:flutter/services.dart';
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
  Future<Result<String>> uploadAsFile(FileStorageEntity file) async {
    try {
      final result = await _source.uploadAsFile(
        File(file.fullPath),
        collection: 'avatars',
      );
      return Result.success(result?.fullPath ?? '');
    } on PlatformException catch (e, s) {
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
  Future<Result<OperationStatus>> deleteFile(String fileName) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }
}
