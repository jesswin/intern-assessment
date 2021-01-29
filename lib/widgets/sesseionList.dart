import 'package:flutter/material.dart';
import '../helpers/theme.dart';
import './quickSessions.dart';

class SessionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 20,
      ),
      Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 20),
        decoration: BoxDecoration(
            color: AppTheme.gray2, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            QuickSessions("✉", "I can't Communicate",
                "How to talk to boss,fam or partner"),
            Divider(
              color: AppTheme.transparent,
            ),
            QuickSessions(
                "🌊", "I can't handle my emotions", "I am having mood swings"),
            Divider(
              color: AppTheme.transparent,
            ),
            QuickSessions("👀", "I want to introspect",
                "Questions my thoughts about stuff"),
            Divider(
              color: AppTheme.transparent,
            ),
            QuickSessions("✉", "I can't Communicate",
                "How to talk to boss,fam or partner"),
            Divider(
              color: AppTheme.transparent,
            ),
            QuickSessions(
                "🌊", "I can't handle my emotions", "I am having mood swings"),
          ],
        ),
      ),
    ]);
  }
}
