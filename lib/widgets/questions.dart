import 'package:flutter/material.dart';
import './questions_bubble.dart';
import '../helpers/dummyList.dart';

class Questions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true, //shrinking it to take only space it needs
        physics: NeverScrollableScrollPhysics(), //not letting the list scroll
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuestionsBubble(questions[index]);
        },
      ),
    );
  }
}
