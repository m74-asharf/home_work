import 'package:flutter/material.dart';

abstract class AppTextStyles {
  // H1 - 24px, Line Height: 28px
  static TextStyle regular24({Color? color}) => TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    color: color ?? Colors.white,
  );

  static TextStyle medium24({Color? color}) => TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
    color: color ?? Colors.white,
  );

  // H2 - 18px, Line Height: 21px
  static TextStyle regular18({Color? color}) => TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: color ?? Colors.white,
  );
  static TextStyle bold20({Color? color}) => TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: color ?? Colors.white,
  );

  // H3 - 16px, Line Height: 19px
  static TextStyle regular16({Color? color}) => TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: color ?? Colors.white,
  );

  static TextStyle medium16({Color? color}) => TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: color ?? Colors.white,
  );

  // H4 - 12px, Line Height: 14px
  static TextStyle regular12({Color? color}) => TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: color ?? Colors.white,
  );

  static TextStyle medium12({Color? color}) => TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: color ?? Colors.white,
  );
}
