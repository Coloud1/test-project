import 'dart:async';

import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/failure/failure.dart';
import 'package:test_prj_ivan/domain/entity/failure/image_picker_failure/image_picker_failure.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';
import 'package:test_prj_ivan/domain/usecase/image/delete_display_photo_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user/change_profile_photo_use_case.dart';
import 'package:test_prj_ivan/domain/usecase/user/firebase_logout_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/settings/main/cubit/settings_cubit_imports.dart';

class SettingsCubit
    extends BaseCubit<SettingsCubitScreenState, SettingsCubitSR> {
  final FirebaseLogoutUseCase _firebaseLogOutUseCase;
  final UserService _userService;
  final ChangeProfilePhotoUseCase _changeProfilePhotoUseCase;
  final DeleteDisplayPhotoUseCase _deleteDisplayPhotoUseCase;
  StreamSubscription<UserEntity>? _subscription;

  SettingsCubit(
    this._firebaseLogOutUseCase,
    this._userService,
    this._changeProfilePhotoUseCase,
    this._deleteDisplayPhotoUseCase,
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

  Future<void> changeProfilePhoto({required bool isGallery}) async {
    showProgress();
    final result = await _changeProfilePhotoUseCase(isGallery: isGallery);

    result.when(
      success: (_) {},
      error: _onChangeAvatarFailure,
    );

    await hideProgress();
  }

  Future<void> deleteProfilePhoto() async {
    showProgress();
    final result = await _deleteDisplayPhotoUseCase(state.user.photoURL);

    result.when(
      success: (_) {},
      error: onFailure,
    );

    await hideProgress();
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

  void _onChangeAvatarFailure(Failure failure) {
    if (failure is ImagePickerFailure) {
      if (failure is ImagePickerPermissionDenied) {
        addSr(const SettingsCubitSR.showPermissionDialog());
      } else if (failure is ImagePickerUnknown) {
        onFailure(failure);
      }
    } else {
      onFailure(failure);
    }
  }
}
