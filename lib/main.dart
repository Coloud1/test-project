//@formatter:off

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_prj_ivan/app/app.dart';
import 'package:test_prj_ivan/app/app_initialization.dart';
import 'package:test_prj_ivan/app/banned_app.dart';
import 'package:test_prj_ivan/app/util/extension/orientation_extension.dart';
import 'package:test_prj_ivan/core/arch/bloc/app_bloc_observer.dart';
import 'package:test_prj_ivan/core/arch/logger/app_logger_impl.dart';
import 'package:test_prj_ivan/core/di/services.dart';

Future<void> mainApp() async {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Initialization.I.initApp();
        await OrientationExtension.lockVertical();
        Bloc.observer = AppBlocObserver();
        final isAllowedToUseApp = await environmentService().initialize();
        if (isAllowedToUseApp) {
          runApp(const App());
        } else {
          runApp(const BannedApp());
        }
      },
      (error, stackTrace) {
        logger.crash(error: error, stackTrace: stackTrace, reason: 'main');
      },
    )?.catchError((e, trace) {
      logger.crash(error: e, stackTrace: trace, reason: 'main');
      exit(-1);
    }),
  );
}
