import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';

abstract interface class RegistrationRepository {
  Future<Result<OperationStatus>> createAccountWithCredentials({
    required String email,
    required String password,
  });

  Future<Result<OperationStatus>> createAccountWithPhoneNumber();
}
