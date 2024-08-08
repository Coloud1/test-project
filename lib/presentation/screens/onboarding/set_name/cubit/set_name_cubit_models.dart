import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_name_cubit_models.freezed.dart';

@freezed
class SetNameCubitScreenState with _$SetNameCubitScreenState {
  const factory SetNameCubitScreenState() = _SetNameCubitScreenState;
}

@freezed
class SetNameCubitSR with _$SetNameCubitSR {
  const factory SetNameCubitSR.navigateNext() = _SetNameCubitSRNavigateNext;
}
