import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.topLeft,
      children: [
        Image.asset(
          'assets/GRADINET.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        child,
      ],
    );
  }
}