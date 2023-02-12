part of epics;

@injectable
class GoalsEpics implements EpicClass<AppState> {
  const GoalsEpics({required GoalsApi api}) : _api = api;

  final GoalsApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetGoalsStart>(_getGoalsStart).call,
    ])(actions, store);
  }

  Stream<AppAction> _getGoalsStart(
      Stream<GetGoalsStart> actions,
      EpicStore<AppState> store,
      ) {
    return actions.flatMap((GetGoalsStart action) {
      return Stream<void>.value(null) //
          .asyncMap((_) => _api.getGoals())
          .expand((List<Goal> goals) {
        return <AppAction>[
          GetGoals.successful(goals),
        ];
      }).onErrorReturnWith((Object error, StackTrace stackTrace) {
        return GetGoals.error(error, stackTrace);
      });
    });
  }
}
