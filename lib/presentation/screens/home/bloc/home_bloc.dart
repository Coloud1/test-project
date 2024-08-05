import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_prj_ivan/app/service/user_service.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc.dart';
import 'package:test_prj_ivan/domain/entity/user/user_entity.dart';
import 'package:test_prj_ivan/presentation/screens/home/bloc/home_bloc_imports.dart';

class HomeBloc
    extends BaseBloc<HomeBlocEvent, HomeBlocScreenState, HomeBlocSR> {
  final UserService _userService;
  StreamSubscription<UserEntity>? _subscription;

  HomeBloc(this._userService)
      : super(HomeBlocScreenState(user: UserEntity.empty())) {
    on<HomeBlocEvent>(
      (event, emit) => event.when(
        getUser: _onGetUser,
        updateUser: (user) => _onUpdateUser(user, emit),
        logOut: () => _onLogOut(emit),
      ),
    );
    _init();
  }

  void _init() {
    _subscription = _userService.getStream().listen(
          (user) => add(
            HomeBlocEvent.updateUser(user),
          ),
        );
  }

  Future<void> _onGetUser() async {
    await _userService.getUser();
  }

  Future<void> _onLogOut(Emitter<HomeBlocScreenState> emit) async {
    await _userService.logOut();
  }

  void _onUpdateUser(UserEntity user, Emitter<HomeBlocScreenState> emit) {
    emit(state.copyWith(user: user));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
