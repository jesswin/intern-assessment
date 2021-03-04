import 'package:flutter/material.dart';
import 'package:intern_assignment/helpers/theme.dart';
import '../helpers/dummyList.dart';

class TopicsForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(), //not letting list scroll
      shrinkWrap: true,
      itemCount: topics.length,
      itemBuilder: (context, index) {
        return Container(
          height: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppTheme.transparent,
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topics[index].title,
                    style: TextStyle(color: AppTheme.white, fontSize: 25),
                  ),
                  Flexible(
                    child: Container(
                      width: 250,
                      child: Text(
                        topics[index].subTitle,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: AppTheme.almostWhite, fontSize: 22),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: AppTheme.primaryForegroundColor,
                      ),
                      Text(
                        topics[index].link,
                        style: TextStyle(
                            color: AppTheme.primaryForegroundColor,
                            fontSize: 22),
                      ),
                    ],
                  ) //icon and text
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: AppTheme.primaryForegroundColor, width: 4)),
                child: Image.network(
                  topics[index].dpUrl,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ), //bordered image on right side
            ],
          ),
        );
      },
    );
  }
}
