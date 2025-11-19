import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/custom_background.dart';
import 'package:quiz_app/widgets/custom_button.dart';
import 'package:quiz_app/widgets/start_page_header.dart';

class StartPageBody extends StatelessWidget {
  const StartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StartPageHeader(),
            Spacer(),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
