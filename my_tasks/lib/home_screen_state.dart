import 'package:flutter/material.dart';
import 'package:my_tasks/task_controllers.dart';
import '../widgets/task_item.dart';
import '../widgets/empty_state.dart';
import '../widgets/add_task_field.dart';

class HomeScreenState extends State<StatefulWidget> {
  final TaskController _controller = TaskController();
  final TextEditingController _textController = TextEditingController();

  void _addTask() {
    setState(() {
      _controller.addTask(_textController.text);
      _textController.clear();
    });
  }

  void _toggleDone(int index) {
    setState(() {
      _controller.toggleDone(index);
    });
  }

  void _deleteTask(int index) {
    setState(() {
      _controller.deleteTask(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5faf8),
      appBar: AppBar(
        title: const Text('My Tasks',
        style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: _controller.isEmpty
                ? const EmptyState()
                : ListView.builder(
                    itemCount: _controller.tasks.length,
                    itemBuilder: (context, index) => TaskItem(
                      task: _controller.tasks[index],
                      onDelete: () => _deleteTask(index),
                      onToggleDone: () => _toggleDone(index),
                    ),
                  ),
          ),
          AddTaskField(controller: _textController, onAdd: _addTask),
        ],
      ),
    );
  }
}
