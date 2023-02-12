// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RootPageRoute.name: (routeData) {
      return AdaptivePage<void>(
        routeData: routeData,
        child: const RootPage(),
        maintainState: false,
      );
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<void>(
        routeData: routeData,
        child: const Home(),
        maintainState: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          RootPageRoute.name,
          path: '/',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: RootPageRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: RootPageRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [RootPage]
class RootPageRoute extends PageRouteInfo<void> {
  const RootPageRoute({List<PageRouteInfo>? children})
      : super(
          RootPageRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootPageRoute';
}

/// generated route for
/// [Home]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}
