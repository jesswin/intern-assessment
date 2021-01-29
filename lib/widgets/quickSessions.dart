import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class QuickSessions extends StatelessWidget {
  final emoji;
  final title;
  final subtitle;
  QuickSessions(this.emoji, this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        emoji,
        style: TextStyle(fontSize: 30),
      ),
      title: Text(title,
          style:
              TextStyle(fontSize: 25, color: AppTheme.primaryForegroundColor)),
      subtitle:
          Text(subtitle, style: TextStyle(fontSize: 22, color: AppTheme.white)),
    );
  }
}
