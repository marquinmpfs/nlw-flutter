import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyles.heading,
            ),
            SizedBox(height: 24),
            AwnserWidget(
              title: 'Possibilita a criação de aplicativos compilados nativamente', 
              isRight: false, 
              isSelected: false
            ),
            AwnserWidget(
              title: 'Possibilita a criação de aplicativos compilados nativamente', 
              isRight: true, 
              isSelected: true
            ),
            AwnserWidget(
              title: 'Possibilita a criação de aplicativos compilados nativamente', 
              isRight: true, 
              isSelected: false
            ),
            AwnserWidget(
              title: 'Possibilita a criação de aplicativos compilados nativamente',
              isRight: true, 
              isSelected: true        
            ),
          ]
        ),
      ),
    );
  }
}
