import 'package:flutter/material.dart';

class QuestionNumberWidget extends StatelessWidget {
  const QuestionNumberWidget({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffb8b2ff), width: 1),
        color: Color(0xff8e84ff),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(text,
      style: TextStyle(color: Colors.white,
      fontSize: 14),),
    );
  }
}