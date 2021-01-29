import 'package:flutter/material.dart';

import 'package:intern_assignment/widgets/circularBtn.dart';
import 'package:intern_assignment/widgets/dropEffect.dart';
import 'package:intern_assignment/widgets/columnHead.dart';
import 'package:intern_assignment/widgets/cardsWithAvatar.dart';
import 'package:intern_assignment/widgets/recallMoments.dart';
import 'package:intern_assignment/widgets/recallThings.dart';
import 'package:intern_assignment/widgets/topicsForYou.dart';
import '../helpers/dummyList.dart';
import 'package:intern_assignment/widgets/searchBar.dart';
import 'package:intern_assignment/widgets/questions.dart';
import '../helpers/theme.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.primaryBackgroundColor,
        body: SafeArea(
          //to keep the screen safe from notch
          top: true,
          bottom: false,
          left: false,
          right: false,
          child: Stack(children: [
            Scrollbar(
              radius: const Radius.circular(20),
              child: SingleChildScrollView(
                physics: ScrollPhysics(), //to keep page scrolling
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ), //to keep the content below the header of height 150
                      ColumnHead("Curated by you", "My Lists",
                          Icons.add), //headings with subHeadings
                      CardsWithAvatar(
                          true, myLists), //cards with circular avatars
                      //passing true to tell widget there's some text with avatar

                      ColumnHead("Curated by you", "My Threads", Icons.add),
                      CardsWithAvatar(false, myThreads),
                      ColumnHead("Learn more by asking", "Questions to ask",
                          Icons.autorenew),
                      Questions(), //Questions to ask with bubbles
                      ColumnHead("Lets Recall", "Things", Icons.shuffle),
                      RecallThings(
                          things), //rounded containers list with some emojis
                      RecallThings(things2),
                      RecallThings(things),
                      RecallThings(things2),
                      ColumnHead("Lets Recall", "Moments", Icons.shuffle),
                      RecallMoments(
                        moments,
                      ), //containers with emojis
                      ColumnHead(
                        "Lets Recall",
                        "People",
                      ),
                      CardsWithAvatar(true, people),
                      ColumnHead(
                        "Food for thought!",
                        "Topics for you",
                      ),
                      TopicsForYou(), //news and links with picture
                      CircularBtn("Browse Topics"), //rounded button
                      ColumnHead(
                        "You liked these",
                        "Quotes",
                      ),
                      CardsWithAvatar(false, myThreads),
                    ],
                  ),
                ),
              ),
            ),
            BackDrop(), //transparent box on top
            MainHeader(), //searchBar and rounded containers
          ]), //stacked elements (main page,backdrop,header cum appbar)
        ));
  }
}
