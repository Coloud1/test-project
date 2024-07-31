import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';

abstract class UserChanges {
  const UserChanges();
}

class AuthorizedUserChanged extends UserChanges {
  final UserEntity user;

  const AuthorizedUserChanged({required this.user});
}

class AuthorizedUserSignedOut extends UserChanges {
  const AuthorizedUserSignedOut();
}
