part of models;

@freezed
class GoalsState with _$GoalsState {
  const factory GoalsState({
    @Default(<Goal>[]) List<Goal> goals,
    Goal? selectedGoal,
  }) = GoalsState$;
}
