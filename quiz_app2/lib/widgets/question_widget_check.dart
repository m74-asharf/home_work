import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_model.dart';
import 'package:quiz_app2/widgets/custom_anser_widget.dart';

class QuestionWidgetCheck extends StatelessWidget {
  QuestionModel questionModel;
  QuestionWidgetCheck({super.key, required this.questionModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        CustomAnserWidget(
          text: questionModel.answers[0],
          isCheck: false,
          questionModel: questionModel,
        ),
        CustomAnserWidget(
          text: questionModel.answers[1],
          isCheck: false,
          questionModel: questionModel,
        ),
        CustomAnserWidget(
          text: questionModel.answers[2],
          isCheck: false,
          questionModel: questionModel,
        ),
        CustomAnserWidget(
          text: questionModel.answers[3],
          isCheck: false,
          questionModel: questionModel,
        ),
      ],
    );
  }
}