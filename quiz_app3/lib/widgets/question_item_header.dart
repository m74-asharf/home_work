import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app3/models/question_model.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';

class QuestionItemHeader extends StatelessWidget {
  const QuestionItemHeader({super.key, required this.questionModel});
  final QuestionModel questionModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.0),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.0, color: Color(0xffb8b2ff)),
              borderRadius: BorderRadius.circular(100.0),
            ),
            color: Color(0xff8d83ff),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 8,
            children: [
              SvgPicture.asset(questionModel.image),
              Text(
                'Question ${questionModel.questionNumber}',
                style: AppTextStyles.regular16()
              ),
            ],
          ),
        ),
      ],
    );
  }
}
