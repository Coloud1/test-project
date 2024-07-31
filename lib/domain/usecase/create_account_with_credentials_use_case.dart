import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/repository/registration_repository.dart';

class CreateAccountWithCredentialsUseCase {
  final RegistrationRepository _repository;

  const CreateAccountWithCredentialsUseCase({
    required RegistrationRepository repository,
  }) : _repository = repository;

  Future<Result<OperationStatus>> call({
    required String email,
    required String password,
  }) =>
      _repository.createAccountWithCredentials(
        email: email,
        password: password,
      );
}
