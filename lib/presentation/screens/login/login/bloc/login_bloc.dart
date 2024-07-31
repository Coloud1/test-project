import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc.dart';
import 'package:test_prj_ivan/domain/params/login/login_params.dart';
import 'package:test_prj_ivan/domain/usecase/make_login_with_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/login/login/bloc/login_bloc_models.dart';

class LoginBloc
    extends BaseBloc<LoginBlocEvent, LoginBlocScreenState, LoginBlocSR> {
  final MakeLoginWithUseCase _makeLoginWithUseCase;

  LoginBloc({
    required MakeLoginWithUseCase makeLoginWithUsecase,
  })  : _makeLoginWithUseCase = makeLoginWithUsecase,
        super(const LoginBlocScreenState()) {
    on<LoginBlocEvent>(
      (event, emit) => event.when(
        makeLoginWithEmail: (email, password) =>
            _onMakeLoginWithEmail(email, password, emit),
        makeLoginWithPhone: (email, phone) =>
            _onMakeLoginWithPhone(email, phone, emit),
        makeLoginWithApple: () => _onLoginWithApple(emit),
        makeLoginWithGoogle: () => _onMakeLoginWithGoogle(emit),
        makeLoginWithGithub: () => _onMakeLoginWithGithub(emit),
      ),
    );
  }

  Future<void> _onMakeLoginWithEmail(
    String email,
    String password,
    Emitter<LoginBlocScreenState> emit,
  ) async {
    await _makeLogin(
      LoginParamsWithCredentials(email: email, password: password),
    );
  }

  Future<void> _onLoginWithApple(Emitter<LoginBlocScreenState> emit) async {
    await _makeLogin(const LoginParamsAppleId());
  }

  Future<void> _onMakeLoginWithGoogle(
    Emitter<LoginBlocScreenState> emit,
  ) async {
    await _makeLogin(const LoginParamsGoogle());
  }

  Future<void> _onMakeLoginWithGithub(
    Emitter<LoginBlocScreenState> emit,
  ) async {
    await _makeLogin(const LoginParamsGithub());
  }

  Future<void> _makeLogin(LoginParams params) async {
    showProgress();
    final result = await _makeLoginWithUseCase(params);

    result.when(
      success: (_) {},
      error: (failure) {
        onFailure(failure);
      },
    );

    await hideProgress();
  }

  void _onMakeLoginWithPhone(
    String email,
    String password,
    Emitter<LoginBlocScreenState> emit,
  ) {}
}
