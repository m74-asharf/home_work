import '../models/task_model.dart';

class TaskController {
  final List<TaskModel> tasks = [];

  void addTask(String title) {
    if (title.trim().isEmpty) return;
    tasks.add(TaskModel(title: title, createdAt: DateTime.now()));
  }

  void toggleDone(int index) {
    tasks[index].isDone = !tasks[index].isDone;
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  bool get isEmpty => tasks.isEmpty;
}
