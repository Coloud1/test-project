import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/core/arch/domain/common/converter/mapper.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';
import 'package:test_prj_ivan/domain/entity/user/user_metadata.dart';
import 'package:test_prj_ivan/domain/entity/user/user_provider_data.dart';

class UserMapper {
  static UserEntity mapFirebaseUserToUserEntity(User from) =>
      _MapFirebaseUserObjectToEntity().map(from);

  const UserMapper._();
}

class _MapFirebaseUserObjectToEntity extends Mapper<User, UserEntity> {
  @override
  UserEntity map(User from) {
    return UserEntity(
      providerData: from.providerData
          .map(
            (e) => UserProviderData(
              providerId: UserProviderDataId.fromRawString(e.providerId),
              uid: e.uid ?? '',
            ),
          )
          .toList(),
      uid: from.uid,
      displayName: from.displayName ?? '',
      email: from.email ?? '',
      photoURL: from.photoURL ?? '',
      userMetadata: UserMetadataEntity(
        creationTime: from.metadata.creationTime ?? DateTime.now(),
        lastSignInTime: from.metadata.lastSignInTime ?? DateTime.now(),
      ),
    );
  }
}
