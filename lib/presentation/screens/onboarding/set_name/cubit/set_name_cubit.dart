import 'package:test_prj_ivan/core/arch/bloc/base_cubit.dart';
import 'package:test_prj_ivan/domain/usecase/user/update_display_name_use_case.dart';
import 'package:test_prj_ivan/presentation/screens/onboarding/set_name/cubit/set_name_cubit_imports.dart';

class SetNameCubit extends BaseCubit<SetNameCubitScreenState, SetNameCubitSR> {
  SetNameCubit(this._updateDisplayNameUseCase)
      : super(const SetNameCubitScreenState());

  final UpdateDisplayNameUseCase _updateDisplayNameUseCase;

  Future<void> updateDisplayName(String newDisplayName) async {
    showProgress();
    final result = await _updateDisplayNameUseCase(displayName: newDisplayName);

    result.when(
      success: (_) {},
      error: (failure) {
        onFailure(failure);
      },
    );

    await hideProgress();
  }
}
