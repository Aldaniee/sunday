library epics;

import 'package:injectable/injectable.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart' hide Notification;
import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/data/index.dart';
import 'package:sunday/src/models/index.dart';

part 'goals_epics.dart';

@injectable
class AppEpics implements EpicClass<AppState> {
  const AppEpics({
    required this.goalsEpics,
  });

  final GoalsEpics goalsEpics;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    final List<Epic<AppState>> epics = <Epic<AppState>>[
      goalsEpics.call,
    ];

    return combineEpics<AppState>(<Epic<AppState>>[
      ...epics,
    ])(actions, store);
  }
}
