import 'package:redux/redux.dart';
import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/models/index.dart';

Reducer<GoalsState> goalsReducer = combineReducers(<Reducer<GoalsState>>[
  TypedReducer<GoalsState, GetGoalsSuccessful>(_getGoalsAction).call,
]);

GoalsState _getGoalsAction(GoalsState state, GetGoalsSuccessful action) {
  return state.copyWith(
    goals: action.goals,
  );
}
