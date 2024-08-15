import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';

part 'settings_cubit_models.freezed.dart';

@freezed
class SettingsCubitSR with _$SettingsCubitSR {
  const factory SettingsCubitSR.showPermissionDialog() =
      _SettingsCubitSRShowPermissionDialog;
}

@freezed
class SettingsCubitScreenState with _$SettingsCubitScreenState {
  const factory SettingsCubitScreenState({
    required UserEntity user,
  }) = _SettingsCubitScreenState;
}
