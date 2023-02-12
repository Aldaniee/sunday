part of actions;

const String _kGetGoalsPendingId = 'GetGoals';

@freezed
class GetGoals with _$GetGoals implements AppAction {
  factory GetGoals() {
    final String pendingId = getPendingKey();
    return GetGoals.start(pendingId);
  }

  @Implements<ActionStart>()
  const factory GetGoals.start(String pendingId) = GetGoalsStart;

  @Implements<ActionDone>()
  const factory GetGoals.successful(
    List<Goal> goals, [
    @Default(_kGetGoalsPendingId) String pendingId,
  ]) = GetGoalsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetGoals.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetGoalsPendingId) String pendingId,
  ]) = GetGoalsError;

  static String getPendingKey() => _kGetGoalsPendingId;
}
