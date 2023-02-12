import 'package:sunday/src/init/action_reporting/_action_reporting_io.dart';
import 'package:sunday/src/models/index.dart';
import 'package:sunday/src/reducer/app_reducer.dart';
import 'package:sunday/src/reducer/goals_reducer.dart';

const ActionReporting _reporting = ActionReporting();

AppState reducer(AppState state, dynamic action) {
  _reporting.report(action);

  // ignore: parameter_assignments
  state = appReducer(state, action);
  return state.copyWith(
    goals: goalsReducer(state.goals, action),
  );
}
