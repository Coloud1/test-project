import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/repository/user_repository.dart';

class LinkAccountWithCredentialsUseCase {
  final UserRepository _userRepository;

  const LinkAccountWithCredentialsUseCase({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<Result<OperationStatus>> call({
    required String email,
    required String password,
  }) =>
      _userRepository.linkWithAccountCredential(
        EmailAuthProvider.credential(email: email, password: password),
      );
}
