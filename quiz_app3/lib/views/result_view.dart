// import 'package:flutter/material.dart';
// import 'package:quiz_app3/assets.dart';
// import 'package:quiz_app3/models/quiz_manager.dart';
// import 'package:quiz_app3/theme/app_color.dart';
// import 'package:quiz_app3/theme/app_decorations.dart';
// import 'package:quiz_app3/theme/app_text_styles.dart';
// import 'package:quiz_app3/views/home_view.dart';
// import 'package:quiz_app3/views/quiz_view.dart';
// import 'package:quiz_app3/widgets/custom_button.dart';

// class ResultView extends StatelessWidget {
//   final QuizManager quizManager;
//   const ResultView({super.key, required this.quizManager});

//   int _calculateTotalScore() {
//     return quizManager.calulateTotalScore().toInt();
//   }

//   double _calculatePercentage() {
//     if (quizManager.questions.isEmpty) return 0.0;
//     final correctAnswers = quizManager.calculateCorrectAnwser();
//     return (correctAnswers / quizManager.questions.length) * 100;
//   }

//   String _getResultMessage(double percentage) {
//     if (percentage >= 90) {
//       return 'Excellent work!';
//     } else if (percentage >= 70) {
//       return 'Good job!';
//     } else if (percentage >= 50) {
//       return 'You passed!';
//     } else {
//       return 'Better luck next time!';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final score = _calculateTotalScore();
//     final percentage = _calculatePercentage();
//     final message = _getResultMessage(percentage);
//     final totalQuestions = quizManager.questions.length;

//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: AppDecorations.mainBackGroundDecoration,
//         child: Stack(
//           children: [
//             Positioned.fill(
//               child: Image.asset(Assets.gradient, fit: BoxFit.fitHeight),
//             ),

//             SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(height: 30),

//                     /// ★ الدائرة الرئيسية
//                     Center(
//                       child: CircleAvatar(
//                         radius: 130,
//                         backgroundColor: AppColor.secondary,
//                         child: Text(
//                           '$score / $totalQuestions',
//                           style: AppTextStyles.bold20(color: AppColor.primary),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 20),

//                     /// ★ النسبة المئوية
//                     Text(
//                       '${percentage.toStringAsFixed(0)}%',
//                       style: AppTextStyles.bold20(color: Colors.white),
//                     ),

//                     SizedBox(height: 8),

//                     /// ★ العبارة التحفيزية
//                     Text(
//                       message,
//                       style: AppTextStyles.bold20(color: Colors.white),
//                     ),

//                     Spacer(),

//                     /// ★ الأزرار في آخر الشاشة (تحت بعض)
//                     CustomButton(
//                       text: 'Back to Home',
//                       onPressed: () {
//                         Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(builder: (context) => HomeView()),
//                           (route) => false,
//                         );
//                       },
//                     ),

//                     SizedBox(height: 16),

//                     CustomButton(
//                       text: 'Restart Quiz',
//                       onPressed: () {
//                         Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(builder: (context) => HomeView()),
//                           (route) => false,
//                         );
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => QuizView()),
//                         );
//                       },
//                     ),

//                     SizedBox(height: 60),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quiz_app3/assets.dart';
import 'package:quiz_app3/models/quiz_manager.dart';
import 'package:quiz_app3/models/result_controller.dart';
import 'package:quiz_app3/theme/app_decorations.dart';
import 'package:quiz_app3/widgets/resultCircle.dart';
import 'package:quiz_app3/widgets/result_actions.dart';
import 'package:quiz_app3/widgets/result_message.dart';
import 'package:quiz_app3/widgets/result_percentage.dart';

class ResultView extends StatelessWidget {
  final QuizManager quizManager;

  const ResultView({super.key, required this.quizManager});

  @override
  Widget build(BuildContext context) {
    final controller = ResultController(quizManager);

    final score = controller.calculateTotalScore();
    final percentage = controller.calculatePercentage();
    final message = controller.getResultMessage(percentage);
    final totalQuestions = quizManager.questions.length;

    return Scaffold(
      body: Container(
        decoration: AppDecorations.mainBackGroundDecoration,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.gradient, fit: BoxFit.fitHeight),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 30),

                    ResultCircle(score: score, total: totalQuestions),
                    const SizedBox(height: 80),

                    ResultPercentage(percentage: percentage),
                    const SizedBox(height: 16),

                    ResultMessage(message: message),
                    const Spacer(),

                    ResultActions(),
                    const SizedBox(height: 60),

                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
