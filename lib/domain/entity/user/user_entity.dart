import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String providerId,
    required String uid,
    required String displayName,
    required String email,
    required String photoURL,
  }) = _UserEntity;

  factory UserEntity.empty() => const UserEntity(
        providerId: '',
        uid: '',
        displayName: '',
        email: '',
        photoURL: '',
      );
}
