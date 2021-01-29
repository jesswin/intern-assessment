import 'package:flutter/material.dart';
import 'package:intern_assignment/widgets/circularBtn.dart';
import 'package:intern_assignment/widgets/closeBtn.dart';
import 'package:intern_assignment/widgets/columnHead.dart';
import 'package:intern_assignment/widgets/feelingsList.dart';
import 'package:intern_assignment/widgets/sesseionList.dart';
import 'package:intern_assignment/widgets/subHeadingText.dart';
import 'package:intern_assignment/widgets/tourBtn.dart';
import 'package:intern_assignment/widgets/transparentBoxes.dart';
import '../helpers/theme.dart';

class GettingStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryBackgroundColor,
      body: SafeArea(
        top: true,
        bottom: false,
        right: false,
        left: false,
        child: Scrollbar(
          radius: Radius.circular(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CloseBtn(),
                  Text(
                    "Help you Think!",
                    style: TextStyle(
                        color: AppTheme.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ), //main title text

                  SubHeadingText(
                      "Everything we do includes Thinking."), //text below title
                  SubHeadingText("This app helps you guide your thoughts."),
                  SubHeadingText("When you click on any option below,"),
                  SubHeadingText("You enter guided mode."),
                  ColumnHead(
                      "Tutorial", "How to us app?"), //headings with subHeadings

                  TourBtn(), //Tour button
                  ColumnHead("Get Started", "How am I Feeling?"),
                  FeelingsList(), //List of feelings with emojis
                  ColumnHead("Quick Sessions", "What to do?"),
                  SessionList(), //List of sessions with emojis
                  CircularBtn("See more options"), //Rounded button
                  ColumnHead("Learn to think like Leaders", "Mental Models"),
                  TransparentBoxes(), //Boxes of transparent Model
                  CircularBtn("Publish your thought guide", 350.0),
                  SizedBox(
                    height: 30,
                  ) //empty space
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
