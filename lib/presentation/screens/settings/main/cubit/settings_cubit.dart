import 'dart:async';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_prj_ivan/app/service/image_picker_service.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/settings/main/cubit/settings_cubit_imports.dart';

class SettingsCubit
    extends BaseCubit<SettingsCubitScreenState, SettingsCubitSR> {
  final FirebaseLogoutUseCase _firebaseLogOutUseCase;
  final UserService _userService;
  final ImagePickerService _imagePickerService;
  StreamSubscription<UserEntity>? _subscription;

  SettingsCubit(
    this._firebaseLogOutUseCase,
    this._userService,
    this._imagePickerService,
  ) : super(SettingsCubitScreenState(user: UserEntity.empty()));

  Future<void> init() async {
    if (_subscription != null) {
      await _subscription?.cancel();
    }

    _subscription = _userService.getStream().listen((user) {
      emit(
        state.copyWith(
          user: user,
        ),
      );
    });

    final result = await _userService.getUser();

    if (result.success) {
      emit(
        state.copyWith(
          user: result.data,
        ),
      );
    }
  }

  Future<void> changeAvatar({required bool isGallery}) async {
    final result = await _imagePickerService.pickImage(
      isGallery ? ImageSource.gallery : ImageSource.camera,
    );

    await result.when(
      success: (file) async {
        if (file != null) {
          final task = await FirebaseStorage.instance
              .ref('avatars/${file.name}')
              .putFile(File(file.path));

          print(task.metadata?.fullPath);
        }
      },
      error: (failure) {},
    );
  }

  Future<void> logout() async {
    final result = await _firebaseLogOutUseCase();

    result.when(
      success: (_) {},
      error: (failure) {
        onFailure(failure);
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
