//@formatter:off

import 'package:get_it/get_it.dart';
import 'package:test_prj_ivan/app/service/auth_service.dart';
import 'package:test_prj_ivan/app/service/image_picker_service.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/domain/repository/image_repository.dart';
import 'package:test_prj_ivan/domain/repository/registration_repository.dart';
import 'package:test_prj_ivan/domain/repository/user_repository.dart';
import 'package:test_prj_ivan/domain/usecase/create_account_with_credentials_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/image/delete_display_photo_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/image/pick_image_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/image/update_display_photo_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/image/upload_image_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/make_login_with_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user/change_profile_photo_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user/update_display_name_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user_provider_data/link_account_with_credentials_use_case.dart';

void registerUseCases(GetIt getIt) {
  getIt
    ..registerLazySingleton<MakeLoginWithUseCase>(
      () => MakeLoginWithUseCase(
        authService: getIt.get<AuthService>(),
      ),
    )
    ..registerLazySingleton<CreateAccountWithCredentialsUseCase>(
      () => CreateAccountWithCredentialsUseCase(
        repository: getIt.get<RegistrationRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateDisplayNameUseCase>(
      () => UpdateDisplayNameUseCase(
        userService: getIt.get<UserService>(),
      ),
    )
    ..registerLazySingleton<FirebaseLogoutUseCase>(
      () => FirebaseLogoutUseCase(
        userService: getIt.get<UserService>(),
      ),
    )
    ..registerLazySingleton<LinkAccountWithCredentialsUseCase>(
      () => LinkAccountWithCredentialsUseCase(
        userRepository: getIt.get<UserRepository>(),
      ),
    )
    ..registerLazySingleton<PickImageUseCase>(
      () => PickImageUseCase(
        imagePickerService: getIt.get<ImagePickerService>(),
      ),
    )
    ..registerLazySingleton<UploadImageUseCase>(
      () => UploadImageUseCase(
        imageRepository: getIt.get<ImageRepository>(),
      ),
    )
    ..registerLazySingleton<UpdateDisplayPhotoUseCase>(
      () => UpdateDisplayPhotoUseCase(
        userService: getIt.get<UserService>(),
      ),
    )
    ..registerLazySingleton<ChangeProfilePhotoUseCase>(
      () => ChangeProfilePhotoUseCase(
        userService: getIt.get<UserService>(),
        pickImageUseCase: getIt.get<PickImageUseCase>(),
        updateDisplayPhotoUseCase: getIt.get<UpdateDisplayPhotoUseCase>(),
        uploadImageUseCase: getIt.get<UploadImageUseCase>(),
      ),
    )
    ..registerLazySingleton<DeleteDisplayPhotoUseCase>(
      () => DeleteDisplayPhotoUseCase(
        userService: getIt.get<UserService>(),
        updateDisplayPhotoUseCase: getIt.get<UpdateDisplayPhotoUseCase>(),
        imageRepository: getIt.get<ImageRepository>(),
      ),
    );
}
