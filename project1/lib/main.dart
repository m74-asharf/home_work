import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(color: Colors.red, height: 200, width: 400),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(color: Colors.blue, height: 30, width: 30),
                    SizedBox(width: 16),
                    Container(color: Colors.green, height: 30, width: 332),
                  ],
                ),
                Divider(
                  height: 32,
                  color: const Color.fromARGB(255, 129, 112, 112),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(color: Colors.orange, height: 50, width: 175),
                        SizedBox(height: 16),
                        Container(color: Colors.orange, height: 50, width: 175),
                      ],
                    ),
                    SizedBox(width: 16),
                    Container(color: Colors.purple, height: 116, width: 85),
                    SizedBox(width: 16),
                    Container(color: Colors.purple, height: 116, width: 85),
                  ],
                ),
                SizedBox(height: 16),
                Stack(
                  children: [
                    Container(color: Colors.yellow, height: 100, width: 400),
                    Positioned(
                      child: Container(
                        color: Colors.brown,
                        height: 100,
                        width: 90,
                      ),
                    ),
                    Positioned(
                      left: 100,
                      child: Container(
                        color: Colors.brown,
                        height: 45,
                        width: 90,
                      ),
                    ),
                    Positioned(
                      left: 100,
                      bottom: 0,
                      child: Container(
                        color: Colors.brown,
                        height: 45,
                        width: 90,
                      ),
                    ),
                    Positioned(
                      right: 90,
                      bottom: 0,
                      child: Container(
                        color: Colors.brown,
                        height: 100,
                        width: 90,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(color: Colors.pink, height: 30, width: 180),
                    SizedBox(width: 17),
                    Container(color: Colors.cyan, height: 30, width: 180),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  color: Colors.grey,
                  height: 50,
                  width: 400,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
