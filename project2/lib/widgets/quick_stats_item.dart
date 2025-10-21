import 'package:flutter/material.dart';

class QuickStatItem extends StatelessWidget {
  const QuickStatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.group),
            Text('1,234', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            SizedBox(height: 1,),
            Text('Users', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          ],
        ),
      ));
  }
}