import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/init/action_reporting/_action_reporting_io.dart' as impl;

abstract class ActionReporting {
  const factory ActionReporting() = impl.ActionReporting;

  void report(dynamic action);
}

bool shouldReport(AppAction action, Object error) {
  return true;
}

bool shouldPrint(AppAction action) {
  return true;
}

dynamic transformAction(AppAction action) {
  return action;
}
