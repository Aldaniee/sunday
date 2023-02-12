part of models;

@freezed
class Goal with _$Goal {
  const factory Goal({
    required int id,
    required String title,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = Goal$;
}
