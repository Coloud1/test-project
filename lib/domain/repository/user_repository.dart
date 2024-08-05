import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/user/user_changes.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';

abstract interface class UserRepository {
  Stream<UserChanges> get stream;

  Future<Result<UserEntity>> getUser();

  Future<Result<OperationStatus>> updateUser();

  Future<Result<OperationStatus>> deleteUser();

  Future<Result<OperationStatus>> signOut();
}
