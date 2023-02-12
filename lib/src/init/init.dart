import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/epics/app_epics.dart';
import 'package:sunday/src/models/index.dart';
import 'package:sunday/src/reducer/reducer.dart';
import 'package:sunday/src/util/injection.dart';

Future<GetIt> init() async {
  final BehaviorSubject<AppAction> actions = BehaviorSubject<AppAction>();
  final GetIt getIt = GetIt.instance
  ..registerSingleton(actions);
  configureDependencies(getIt);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      //...getIt.get<AppMiddleware>().middleware,
      EpicMiddleware<AppState>(getIt.get<AppEpics>()).call,
      TypedMiddleware<AppState, AppAction>((_, AppAction action, NextDispatcher next) {
        next(action);
        actions.add(action);
      }).call,
    ],
  )
    ..dispatch(const InitializeApp());

  return getIt..registerSingleton(store);
}
