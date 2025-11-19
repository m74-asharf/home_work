import 'package:flutter/material.dart';

abstract class AppDecorations {
  static ShapeDecoration selectedAnswerBackgroundDecoration = ShapeDecoration(
    gradient: buildSecondaryGradient(),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(12),
    ),
  );

  static BoxDecoration mainBackGroundDecoration = BoxDecoration(
    gradient: buildMainBackgroundGradient(),
  );

  static ShapeDecoration notSelectedAnswerBackgroundDecoration = ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  );

  static LinearGradient buildMainBackgroundGradient() {
    return LinearGradient(
      colors: [Color(0xff060B26), Color(0xff1A1F37)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  static LinearGradient buildSecondaryGradient() => LinearGradient(
    colors: [Color(0xffB8B2FF), Color(0xffC6C2F8)],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
}
