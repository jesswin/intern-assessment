import 'package:flutter/material.dart';
import '../helpers/theme.dart';

class CloseBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 195,
      top: 10,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            color: AppTheme.primaryForegroundColor,
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          Icons.close,
          size: 20,
        ),
      ),
    );
  }
}
