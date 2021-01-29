import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class SubHeadingText extends StatelessWidget {
  final txt;
  SubHeadingText(this.txt);
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: AppTheme.almostWhite,
        fontSize: 20,
      ),
    );
  }
}
