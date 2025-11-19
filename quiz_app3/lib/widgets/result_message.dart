import 'package:flutter/material.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';

class ResultMessage extends StatelessWidget {
  final String message;

  const ResultMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: AppTextStyles.regular24(color: Colors.white),
    );
  }
}
