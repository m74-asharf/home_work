import 'package:flutter/material.dart';
import 'package:quiz_app3/theme/app_color.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';

class ResultCircle extends StatelessWidget {
  final int score;
  final int total;

  const ResultCircle({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 130,
      backgroundColor: AppColor.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$score', style: TextStyle(fontSize: 60)),
          Text(
            '/ $total',
            style: AppTextStyles.medium24(color: AppColor.primary),
          ),
        ],
      ),
    );
  }
}
