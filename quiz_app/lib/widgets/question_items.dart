import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_item.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            'How would you describe your level of satisfaction with the healthcare system?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 32),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: AnswerItem(),
                );
              },
              itemCount: 4,
            ),
          ),
          Spacer(),
          Row(
            children: [
              SizedBox(
                width: 110,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios, color: Colors.white),
                      Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 110,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8e84ff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
