import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/init/action_reporting/action_reporting.dart' as base;

class ActionReporting implements base.ActionReporting {
  const ActionReporting();

  @override
  void report(dynamic action) {
    if (action is! AppAction) {
      throw StateError('This is not a valid action: $action');
    } else if (action is ErrorAction) {
      final Object error = action.error;
      final StackTrace stackTrace = action.stackTrace;

      if (base.shouldReport(action, error)) {
        if (kReleaseMode) {
          log('$action', time: DateTime.now(), error: error, stackTrace: stackTrace);
          // Zone.current.handleUncaughtError(error, stackTrace);
        } else {
          log('$action', time: DateTime.now(), error: error, stackTrace: stackTrace);
        }
      }
    } else if (kDebugMode) {
      if (base.shouldPrint(action)) {
        log('${base.transformAction(action)}', time: DateTime.now());
      }
    } else {
      log('${base.transformAction(action)}', time: DateTime.now());
    }
  }
}
