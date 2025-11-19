import 'package:flutter/material.dart';
import 'package:quiz_app3/models/question_model.dart';
import 'package:quiz_app3/models/quiz_manager.dart';
import 'package:quiz_app3/widgets/option_item.dart';

class OptionsList extends StatefulWidget {
  const OptionsList({super.key, required this.questionModel, required this.quizManager});
  final QuestionModel questionModel;
  final QuizManager quizManager;

  @override
  State<OptionsList> createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.questionModel.options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              String selectedAnswer = widget.questionModel.options[index];
              widget.quizManager.updateSelectedAnswer(
                widget.questionModel, 
                selectedAnswer);
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: OptionItem(
                isSelected: selectedIndex == index,
                option: widget.questionModel.options[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
