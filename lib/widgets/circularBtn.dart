import 'package:flutter/material.dart';
import 'package:intern_assignment/helpers/theme.dart';

class CircularBtn extends StatelessWidget {
  final txt;
  final width;
  CircularBtn(this.txt, [this.width = 230.0]);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: AppTheme.gray1),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
              color: AppTheme.primaryForegroundColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
