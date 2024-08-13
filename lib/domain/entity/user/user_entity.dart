import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_prj_ivan/domain/entity/user/user_metadata.dart';
import 'package:test_prj_ivan/domain/entity/user/user_provider_data.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required List<UserProviderData> providerData,
    required String uid,
    required String displayName,
    required String email,
    required String photoURL,
    required UserMetadataEntity userMetadata,
  }) = _UserEntity;

  factory UserEntity.empty() => UserEntity(
        providerData: [],
        uid: '',
        displayName: '',
        email: '',
        photoURL: '',
        userMetadata: UserMetadataEntity(
          creationTime: DateTime.now(),
          lastSignInTime: DateTime.now(),
        ),
      );
}
