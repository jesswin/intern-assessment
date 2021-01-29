import 'package:flutter/material.dart';
import '../helpers/theme.dart';
import './feelingListtile.dart';

class FeelingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: AppTheme.gray2, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            FeelingsListtile("😃", "I feel happy right now"),
            Divider(
              color: AppTheme.transparent,
            ),
            FeelingsListtile("😰", "I feel anxious right now"),
            Divider(
              color: AppTheme.transparent,
            ),
            FeelingsListtile("😡", "I feel angry right now"),
            Divider(
              color: AppTheme.transparent,
            ),
            FeelingsListtile("😔", "I feel sad right now"),
          ],
        ),
      ),
    ]);
  }
}
