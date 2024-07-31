import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';

class UserFailure implements FeatureFailure {
  const UserFailure();
}

class UserSignedOutFailure extends UserFailure {
  const UserSignedOutFailure();
}
