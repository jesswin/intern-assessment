import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class ColumnHead extends StatelessWidget {
  final heading;
  final subHeading;
  final IconData icon;
  ColumnHead(this.heading, this.subHeading, [this.icon]);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ), //some upper space
            Text(
              heading,
              style: TextStyle(color: AppTheme.almostWhite, fontSize: 25),
            ),
            Text(
              subHeading,
              style: TextStyle(color: AppTheme.white, fontSize: 35),
            )
          ],
        ),
        Spacer(),
        icon != null
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppTheme.darkGray,
                ),
                child: Icon(
                  icon,
                  size: 45,
                  color: AppTheme.primaryForegroundColor,
                ),
              ) //checking if icon is provided or not
            : Container(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
