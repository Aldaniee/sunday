library actions;

import 'dart:io';

import 'package:sunday/src/data/index.dart';
import 'package:sunday/src/models/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sunday/src/actions/index.dart';
import 'package:sunday/src/models/index.dart';

part 'index.freezed.dart';
part 'app/initialize_app.dart';
part 'goals/get_goals.dart';

abstract class AppAction {}

typedef ActionResult = void Function(AppAction action);

abstract class ErrorAction extends AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class PendingAction extends AppAction {
  String get pendingId;
}

abstract class ActionStart extends PendingAction {}

abstract class ActionDone extends PendingAction {}

