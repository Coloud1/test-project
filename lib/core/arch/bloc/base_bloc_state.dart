import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc.dart';
import 'package:test_prj_ivan/core/arch/bloc/bloc_builders_mixin.dart';
import 'package:test_prj_ivan/core/arch/bloc/bloc_typedefs.dart';
import 'package:test_prj_ivan/core/arch/bloc/stream_listener.dart';
import 'package:test_prj_ivan/core/arch/domain/entity/progress_state/progress_state.dart';

abstract class BaseState<S, B extends BaseBloc<dynamic, S, SR>, SR,
        W extends StatefulWidget> extends State<W>
    with BlocBuildersMixin<B, S, SR> {
  bool lazyBloc = false;
  B? _bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>(
      create: (context) {
        final bloc = createBloc();
        onBlocCreated(context, bloc);
        _bloc = bloc;
        return bloc;
      },
      lazy: lazyBloc,
      child: Builder(
        builder: (context) {
          initParams(context);
          return buildWidget(context);
        },
      ),
    );
  }

  @override
  void dispose() {
    if (_bloc != null) {
      _bloc?.dispose();
    }
    super.dispose();
  }

  B blocOf(BuildContext context) => context.read<B>();

  B createBloc() => GetIt.I.get<B>();

  Widget srObserver({
    required BuildContext context,
    required Widget child,
    required SingleResultListener<SR> onSR,
  }) {
    return StreamListener<SR>(
      stream: (_bloc ?? blocOf(context)).singleResults,
      onData: (data) {
        onSR(context, data);
      },
      child: child,
    );
  }

  void onBlocCreated(BuildContext context, B bloc) {
    bloc.progressStream.listen((event) {
      if (event is DefaultProgressState) {
        if (event.showProgress) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      }
    });
  }

  // ignore: no-empty-block
  void initParams(BuildContext context) {}

  Widget buildWidget(BuildContext context);
}
