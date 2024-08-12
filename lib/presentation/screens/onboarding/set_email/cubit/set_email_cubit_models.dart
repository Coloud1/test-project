import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_email_cubit_models.freezed.dart';

@freezed
class SetEmailCubitSR with _$SetEmailCubitSR {
  const factory SetEmailCubitSR.onSR() = _SetEmailCubitSROnSR;
}

@freezed
class SetEmailCubitScreenState with _$SetEmailCubitScreenState {
  const factory SetEmailCubitScreenState() = _SetEmailCubitScreenState;
}
