class Hobbies {
  const Hobbies({
    required this.label,
    this.completed = 0,
    this.doing = 0,
    this.wantTo = 0,
  });

  final String label;
  final int completed;
  final int doing;
  final int wantTo;
}
