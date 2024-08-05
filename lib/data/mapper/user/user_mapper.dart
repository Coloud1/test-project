import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/core/arch/domain/common/converter/mapper.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';

class UserMapper {
  static UserEntity mapFirebaseUserToUserEntity(User from) =>
      _MapFirebaseUserObjectToEntity().map(from);

  const UserMapper._();
}

class _MapFirebaseUserObjectToEntity extends Mapper<User, UserEntity> {
  @override
  UserEntity map(User from) {
    return UserEntity(
      providerId: '',
      uid: from.uid,
      displayName: from.displayName ?? '',
      email: from.email ?? '',
      photoURL: from.photoURL ?? '',
    );
  }
}
