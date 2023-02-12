// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  Set<String> get pendingActions => throw _privateConstructorUsedError;
  GoalsState get goals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({Set<String> pendingActions, GoalsState goals});

  $GoalsStateCopyWith<$Res> get goals;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingActions = null,
    Object? goals = null,
  }) {
    return _then(_value.copyWith(
      pendingActions: null == pendingActions
          ? _value.pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as GoalsState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsStateCopyWith<$Res> get goals {
    return $GoalsStateCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(
          _$AppState$ value, $Res Function(_$AppState$) then) =
      __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> pendingActions, GoalsState goals});

  @override
  $GoalsStateCopyWith<$Res> get goals;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(
      _$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingActions = null,
    Object? goals = null,
  }) {
    return _then(_$AppState$(
      pendingActions: null == pendingActions
          ? _value._pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as GoalsState,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final Set<String> pendingActions = const <String>{},
      this.goals = const GoalsState()})
      : _pendingActions = pendingActions;

  final Set<String> _pendingActions;
  @override
  @JsonKey()
  Set<String> get pendingActions {
    if (_pendingActions is EqualUnmodifiableSetView) return _pendingActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pendingActions);
  }

  @override
  @JsonKey()
  final GoalsState goals;

  @override
  String toString() {
    return 'AppState(pendingActions: $pendingActions, goals: $goals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            const DeepCollectionEquality()
                .equals(other._pendingActions, _pendingActions) &&
            (identical(other.goals, goals) || other.goals == goals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pendingActions), goals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final Set<String> pendingActions, final GoalsState goals}) = _$AppState$;

  @override
  Set<String> get pendingActions;
  @override
  GoalsState get goals;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Goal {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalCopyWith<Goal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res, Goal>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res, $Val extends Goal>
    implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Goal$CopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$Goal$CopyWith(_$Goal$ value, $Res Function(_$Goal$) then) =
      __$$Goal$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$Goal$CopyWithImpl<$Res> extends _$GoalCopyWithImpl<$Res, _$Goal$>
    implements _$$Goal$CopyWith<$Res> {
  __$$Goal$CopyWithImpl(_$Goal$ _value, $Res Function(_$Goal$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$Goal$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$Goal$ implements Goal$ {
  const _$Goal$(
      {required this.id,
      required this.title,
      required this.description,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Goal(id: $id, title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Goal$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Goal$CopyWith<_$Goal$> get copyWith =>
      __$$Goal$CopyWithImpl<_$Goal$>(this, _$identity);
}

abstract class Goal$ implements Goal {
  const factory Goal$(
      {required final int id,
      required final String title,
      required final String description,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$Goal$;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$Goal$CopyWith<_$Goal$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoalsState {
  List<Goal> get goals => throw _privateConstructorUsedError;
  Goal? get selectedGoal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoalsStateCopyWith<GoalsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsStateCopyWith<$Res> {
  factory $GoalsStateCopyWith(
          GoalsState value, $Res Function(GoalsState) then) =
      _$GoalsStateCopyWithImpl<$Res, GoalsState>;
  @useResult
  $Res call({List<Goal> goals, Goal? selectedGoal});

  $GoalCopyWith<$Res>? get selectedGoal;
}

/// @nodoc
class _$GoalsStateCopyWithImpl<$Res, $Val extends GoalsState>
    implements $GoalsStateCopyWith<$Res> {
  _$GoalsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? selectedGoal = freezed,
  }) {
    return _then(_value.copyWith(
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
      selectedGoal: freezed == selectedGoal
          ? _value.selectedGoal
          : selectedGoal // ignore: cast_nullable_to_non_nullable
              as Goal?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalCopyWith<$Res>? get selectedGoal {
    if (_value.selectedGoal == null) {
      return null;
    }

    return $GoalCopyWith<$Res>(_value.selectedGoal!, (value) {
      return _then(_value.copyWith(selectedGoal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoalsState$CopyWith<$Res>
    implements $GoalsStateCopyWith<$Res> {
  factory _$$GoalsState$CopyWith(
          _$GoalsState$ value, $Res Function(_$GoalsState$) then) =
      __$$GoalsState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Goal> goals, Goal? selectedGoal});

  @override
  $GoalCopyWith<$Res>? get selectedGoal;
}

/// @nodoc
class __$$GoalsState$CopyWithImpl<$Res>
    extends _$GoalsStateCopyWithImpl<$Res, _$GoalsState$>
    implements _$$GoalsState$CopyWith<$Res> {
  __$$GoalsState$CopyWithImpl(
      _$GoalsState$ _value, $Res Function(_$GoalsState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? selectedGoal = freezed,
  }) {
    return _then(_$GoalsState$(
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
      selectedGoal: freezed == selectedGoal
          ? _value.selectedGoal
          : selectedGoal // ignore: cast_nullable_to_non_nullable
              as Goal?,
    ));
  }
}

/// @nodoc

class _$GoalsState$ implements GoalsState$ {
  const _$GoalsState$(
      {final List<Goal> goals = const <Goal>[], this.selectedGoal})
      : _goals = goals;

  final List<Goal> _goals;
  @override
  @JsonKey()
  List<Goal> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  final Goal? selectedGoal;

  @override
  String toString() {
    return 'GoalsState(goals: $goals, selectedGoal: $selectedGoal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalsState$ &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.selectedGoal, selectedGoal) ||
                other.selectedGoal == selectedGoal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_goals), selectedGoal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalsState$CopyWith<_$GoalsState$> get copyWith =>
      __$$GoalsState$CopyWithImpl<_$GoalsState$>(this, _$identity);
}

abstract class GoalsState$ implements GoalsState {
  const factory GoalsState$(
      {final List<Goal> goals, final Goal? selectedGoal}) = _$GoalsState$;

  @override
  List<Goal> get goals;
  @override
  Goal? get selectedGoal;
  @override
  @JsonKey(ignore: true)
  _$$GoalsState$CopyWith<_$GoalsState$> get copyWith =>
      throw _privateConstructorUsedError;
}
