import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';

part 'home_bloc_models.freezed.dart';

@freezed
class HomeBlocEvent with _$HomeBlocEvent {
  const factory HomeBlocEvent.getUser() = _HomeBlocEventGetUser;

  const factory HomeBlocEvent.updateUser(UserEntity user) =
      _HomeBlocEventUpdateUser;

  const factory HomeBlocEvent.logOut() = _HomeBlocEventLogOut;
}

@freezed
class HomeBlocSR with _$HomeBlocSR {
  const factory HomeBlocSR.onSR() = _HomeBlocSROnSR;
}

@freezed
class HomeBlocScreenState with _$HomeBlocScreenState {
  const factory HomeBlocScreenState({
    required UserEntity user,
  }) = _HomeBlocScreenState;
}
