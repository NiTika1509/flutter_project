import 'package:auto_route/auto_route.dart';
import 'package:flutter_project/core/route/router.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter{

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [


    AutoRoute(
      page: RootRoute.page,
      initial: false,
      children: [
        AutoRoute(page: CharacterListRoute.page),
        AutoRoute(page: ProfileRoute.page)
      ]
    ),
    AutoRoute(path: '/fsda', page: WelcomeRoute.page),
    AutoRoute(path: '/', page: AuthRoute.page),
  ];

  @override
  List<AutoRouteGuard> get guards => [
    // optionally add root guards here
  ];
}