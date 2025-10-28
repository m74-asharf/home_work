import 'package:flutter/material.dart';
import 'package:third_project/constants.dart';

class WeightAgeCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const WeightAgeCard({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: KActiveCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: KLabelTextStyle),
            Text('$value', style: KNumberTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  shape: CircleBorder(),
                  heroTag: '$label-',
                  mini: true,
                  onPressed: onDecrement,
                  backgroundColor: Color(0xff4c4f5e),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  shape: CircleBorder(),
                  heroTag: '$label+',
                  mini: true,
                  onPressed: onIncrement,
                  backgroundColor: Color(0xff4c4f5e),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
