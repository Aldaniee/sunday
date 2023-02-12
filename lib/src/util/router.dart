import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:sunday/src/home.dart';
import 'package:sunday/src/presentation/home/root.dart';

part 'router.gr.dart';

@injectable
@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      path: '/',
      page: RootPage,
      initial: true,
      maintainState: false,
      children: <AutoRoute>[
        AutoRoute<void>(
          path: 'home',
          page: Home,
          initial: true,
          maintainState: false,
          children: <AutoRoute>[],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}

