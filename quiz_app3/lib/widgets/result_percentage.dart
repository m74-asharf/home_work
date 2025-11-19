import 'package:flutter/material.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';

class ResultPercentage extends StatelessWidget {
  final double percentage;

  const ResultPercentage({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${percentage.toStringAsFixed(0)}%',
      style: AppTextStyles.medium24(color: Colors.white),
    );
  }
}
