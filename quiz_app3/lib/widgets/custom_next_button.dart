import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  CustomNextButton({
    super.key,
    required this.pageController,
    required this.pageCount,
    this.onComplete,
  });
  final PageController pageController;
  final int pageCount;
  final VoidCallback? onComplete;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (pageController.page!.toInt() < pageCount - 1) {
          pageController.nextPage(
            duration: Duration(milliseconds: 600),
            curve: Curves.linear,
          );
        } else {
          onComplete?.call();
        }
      },
      child: Card(
        color: Color(0xFF8E84FF),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Text('Next', style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Gilroy')),
              SizedBox(width: 18),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
