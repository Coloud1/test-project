import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/operation_status.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/common/result.dart';
import 'package:test_prj_ivan/domain/entity/failure/firebase/firebase_auth_failure.dart';
import 'package:test_prj_ivan/domain/repository/image_repository.dart';
import 'package:test_prj_ivan/domain/usecase/image/update_display_photo_use_case.dart';

class DeleteDisplayPhotoUseCase {
  final ImageRepository _imageRepository;
  final UpdateDisplayPhotoUseCase _updateDisplayPhotoUseCase;
  final UserService _userService;

  DeleteDisplayPhotoUseCase({
    required ImageRepository imageRepository,
    required UpdateDisplayPhotoUseCase updateDisplayPhotoUseCase,
    required UserService userService,
  })  : _imageRepository = imageRepository,
        _updateDisplayPhotoUseCase = updateDisplayPhotoUseCase,
        _userService = userService;

  Future<Result<OperationStatus>> call(String url) async {
    final user = await _userService.getUser();

    if (user.isError) {
      return const Result.error(
        failure: UserNotFoundFailure('User is logged out'),
      );
    }

    final uri = Uri.parse(url);
    final imageResult =
        await _imageRepository.deleteFile(uri.pathSegments.last);

    if (imageResult.isError) {
      return Result.error(failure: imageResult.error.failure);
    }

    return _updateDisplayPhotoUseCase('');
  }
}
