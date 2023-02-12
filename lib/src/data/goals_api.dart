part of data;

@injectable
class GoalsApi {
  const GoalsApi();

  //final p.GoalsClient _goals;

  Future<List<Goal>> getGoals() async {
    // Simulating a server delay
    await Future<dynamic>.delayed(const Duration(milliseconds: 50));
    return <Goal>[
      Goal(id: 1, title: 'Skin Care Routine', description: 'Apply lotion after showering.', createdAt: DateTime.now(), updatedAt: DateTime.now()),
      Goal(id: 2, title: 'Brush Your Teeth', description: 'Brush your teeth for 2 minutes.', createdAt: DateTime.now(), updatedAt: DateTime.now()),
      Goal(id: 3, title: 'Read Before Bed', description: 'Put the phone down and read tonight.', createdAt: DateTime.now(), updatedAt: DateTime.now()),
      Goal(id: 4, title: 'Cold Shower', description: 'Take a cold shower for 3 minutes today.', createdAt: DateTime.now(), updatedAt: DateTime.now()),
    ];

    // final p.ListGoalsResponse proto = await _goals.listGoals(p.Empty());
    // return proto.goals //
    //     .map((p.Goal goal) => Goal.fromProto(goal))
    //     .toList();
  }
}
