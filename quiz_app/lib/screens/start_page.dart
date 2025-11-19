import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/start_page_body.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060B26),
      body: StartPageBody(), 
    );
  }
}