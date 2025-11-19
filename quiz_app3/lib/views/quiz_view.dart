import 'package:flutter/material.dart';
import 'package:quiz_app3/models/quiz_manager.dart';
import 'package:quiz_app3/theme/app_decorations.dart';
import 'package:quiz_app3/views/result_view.dart';
import 'package:quiz_app3/widgets/custom_back_button.dart';
import 'package:quiz_app3/widgets/custom_next_button.dart';
import 'package:quiz_app3/widgets/question_item.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  QuizManager quizManager = QuizManager();
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecorations.mainBackGroundDecoration,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (index) {
                      pageIndex = index;
                      setState(() {});
                    },
                    controller: pageController,
                    itemCount: QuizManager().questions.length,
                    itemBuilder: (context, index) {
                      return QuestionItem(
                        questionModel: quizManager.questions[index],
                        quizManager: quizManager,
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Visibility(
                      visible: pageIndex != 0,
                      child: CustomBackButton(pageController: pageController),
                    ),
                    Spacer(),
                    CustomNextButton(
                      pageController: pageController,
                      pageCount: quizManager.questions.length,
                      onComplete: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResultView(quizManager: quizManager),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
