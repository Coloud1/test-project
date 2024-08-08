import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_prj_ivan/core/arch/bloc/failure_stream_mixin.dart';
import 'package:test_prj_ivan/core/arch/bloc/progress_stream_mixin.dart';
import 'package:test_prj_ivan/core/arch/bloc/sr_cubit_mixin.dart';

abstract class BaseCubit<State, SR> extends Cubit<State>
    with
        SingleResultCubitMixin<State, SR>,
        ProgressStreamMixin,
        FailureStreamMixin {
  BaseCubit(super.initialState);

  void dispose() {
    closeProgressStream();
    closeFailureStream();
  }
}
