import 'package:auto_route/auto_route.dart';
import 'package:save_app/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardRoute.page, initial: true),
      ];
}
