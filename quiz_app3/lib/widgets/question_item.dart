import 'package:flutter/material.dart';
import 'package:quiz_app3/models/question_model.dart';
import 'package:quiz_app3/models/quiz_manager.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';
import 'package:quiz_app3/widgets/options_list.dart';
import 'package:quiz_app3/widgets/question_item_header.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.questionModel, required this.quizManager});
  final QuestionModel questionModel;
  final QuizManager quizManager;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionItemHeader(questionModel: questionModel),
          SizedBox(height: 16.0),
          Text(questionModel.title, style: AppTextStyles.medium24()),
          SizedBox(height: 32.0),
          OptionsList(questionModel: questionModel, quizManager: quizManager,),
        ],
      ),
    );
  }
}
