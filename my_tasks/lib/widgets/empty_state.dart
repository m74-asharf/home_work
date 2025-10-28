import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt, size: 75, color: Color(0xffaecdc3)),
          SizedBox(height: 10),
          Text(
            'No tasks yet',
            style: TextStyle(fontSize: 18, color: Color(0xff77797b)),
          ),
          SizedBox(height: 5),
          Text(
            'Add a task to get started',
            style: TextStyle(fontSize: 16, color: Color(0xffb5b9b8)),
          ),
        ],
      ),
    );
  }
}
