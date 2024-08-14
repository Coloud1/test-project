import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_storage_entity.freezed.dart';

@freezed
class FileStorageEntity with _$FileStorageEntity {
  const factory FileStorageEntity({
    required String fullPath,
    required String fileName,
  }) = _FileStorageEntity;

  String get photosRef => 'photos/${fileName.toLowerCase()}';

  const FileStorageEntity._();
}
