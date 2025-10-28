import 'package:flutter/material.dart';

class AddTaskField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const AddTaskField({
    super.key,
    required this.controller,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xffeef3f1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Add a new task...',
                hintStyle: TextStyle(color: Color(0xff636a68)),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, left: 8),
          child: GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xffdfe3e2),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Color(0xff9b9f9e),
                  size: 30,
                ),
                onPressed: onAdd,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
