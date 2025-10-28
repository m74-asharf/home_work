class TaskModel {
  final String title;
  final DateTime createdAt;
  bool isDone;

  TaskModel({
    required this.title,
    required this.createdAt,
    this.isDone = false,
  });
}
