import 'package:go_router/go_router.dart';
import 'package:test_prj_ivan/app/router/guards/base_guard.dart';

class GoRouterWrapper extends GoRoute {
  final BaseGuard? baseGuard;

  GoRouterWrapper({
    required super.path,
    this.baseGuard,
    super.name,
    super.builder,
    super.onExit,
    super.pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(redirect: baseGuard?.makeRedirect);
}
