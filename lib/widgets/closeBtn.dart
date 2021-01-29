import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class CloseBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppTheme.gray1, borderRadius: BorderRadius.circular(30)),
        child: Icon(
          Icons.close,
          size: 35,
          color: AppTheme.primaryForegroundColor,
        ),
      ),
    );
  }
}
