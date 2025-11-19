import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget page;
  const CustomButton({super.key, required this.page, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return page;
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              color: Color(0xff2B0063),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
