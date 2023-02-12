import 'package:redux/redux.dart';
import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/models/index.dart';

Reducer<AppState> appReducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, ActionStart>(_isActionStart).call,
  TypedReducer<AppState, ActionDone>(_isActionDone).call,
]);

AppState _isActionStart(AppState state, ActionStart action) {
  return state.copyWith(
    pendingActions: Set<String>.unmodifiable(<String>{...state.pendingActions, action.pendingId}),
  );
}

AppState _isActionDone(AppState state, ActionDone action) {
  return state.copyWith(
    pendingActions: Set<String>.unmodifiable(<String>{...state.pendingActions}..remove(action.pendingId)),
  );
}