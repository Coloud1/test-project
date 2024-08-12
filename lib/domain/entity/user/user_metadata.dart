import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_metadata.freezed.dart';

@freezed
class UserMetadataEntity with _$UserMetadataEntity {
  const factory UserMetadataEntity({
    required DateTime creationTime,
    required DateTime lastSignInTime,
  }) = _UserMetadataEntity;
}
