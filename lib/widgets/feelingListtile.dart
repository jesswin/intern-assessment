import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class FeelingsListtile extends StatelessWidget {
  final emoji;
  final title;
  FeelingsListtile(this.emoji, this.title);
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
    );
  }
}
