class TaskModel {
  final String title;
  final DateTime date;
  bool isComplete;

  TaskModel({
    required this.title,
    required this.date,
    this.isComplete = false,
  });
}
