//@formatter:off

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:test_prj_ivan/app/bloc/app_bloc_imports.dart';
import 'package:test_prj_ivan/app/localization/generated/l10n.dart';
import 'package:test_prj_ivan/app/router/app_router.dart';
import 'package:test_prj_ivan/core/arch/bloc/base_bloc_state.dart';
import 'package:test_prj_ivan/core/arch/widget/common/flavor_banner.dart';
import 'package:test_prj_ivan/presentation/style/theme/theme_imports.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends BaseState<AppScreenState, AppBloc, AppSR, App> {
  Locale? locale;

  @override
  void initState() {
    super.initState();
    AppRouter.init();
  }

  @override
  Widget buildWidget(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayColor: Colors.black.withOpacity(0.5),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return blocBuilder(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                builder: (context, widget) {
                  return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: TextScaler.noScaling),
                    child: FlavorBanner(
                      child: widget ?? const SizedBox(),
                    ),
                  );
                },
                scrollBehavior: const CupertinoScrollBehavior(),
                theme: createLightTheme(),
                darkTheme: createDarkTheme(),
                themeMode: state.themeMode,
                routeInformationProvider:
                    AppRouter.router.routeInformationProvider,
                routeInformationParser: AppRouter.router.routeInformationParser,
                routerDelegate: AppRouter.router.routerDelegate,
                locale: locale,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                onGenerateTitle: (context) => S.of(context).title,
              );
            },
          );
        },
      ),
    );
  }
}
