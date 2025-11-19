import 'package:flutter/material.dart';
import 'package:quiz_app3/assets.dart';
import 'package:quiz_app3/theme/app_decorations.dart';
import 'package:quiz_app3/theme/app_text_styles.dart';
import 'package:quiz_app3/views/quiz_view.dart';
import 'package:quiz_app3/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecorations.mainBackGroundDecoration,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.gradient, fit: BoxFit.fitHeight),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.0),
                    Text('Good morning,', style: AppTextStyles.regular16()),
                    SizedBox(height: 8.0),
                    Text(
                      'New topic is waiting',
                      style: AppTextStyles.medium24(),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                        child: Image.asset(
                          Assets.homeImage,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    CustomButton(
                      text: 'Start Quiz',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => QuizView()),
                        );
                      },
                    ),
                    SizedBox(height: 50.0),
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
