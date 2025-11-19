import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBackButton extends StatelessWidget {
  CustomBackButton({super.key, required this.pageController});
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.previousPage(
          duration: Duration(milliseconds: 600),
          curve: Curves.linear,
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Color(0xFF8E84FF)),
        ),
        color: Color(0xFF2A2740),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 15),
              SizedBox(width: 18),
              Text('Back', style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
