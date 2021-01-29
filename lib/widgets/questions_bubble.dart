import 'package:flutter/material.dart';

import '../helpers/theme.dart';

class QuestionsBubble extends StatelessWidget {
  final question;
  QuestionsBubble(this.question);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 250,
              minWidth: 200,
            ), //to keep uniformity
            padding: const EdgeInsets.all(10),
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppTheme.primaryForegroundColor,
            ),
            child: Text(
              question,
              overflow: question.length >
                      20 //checking text overflow more than 20 chars then using ellipis
                  ? TextOverflow.ellipsis
                  : TextOverflow.visible,
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 0,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: AppTheme.primaryForegroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ), //keeping the chat bubbles positioned
        Positioned(
          left: 0,
          bottom: 2,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: AppTheme.primaryForegroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 5,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: AppTheme.primaryForegroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
      overflow:
          Overflow.visible, //not letting the bubbles hide under other widget
    );
  }
}
