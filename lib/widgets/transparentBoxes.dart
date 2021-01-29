import 'package:flutter/material.dart';
import 'package:intern_assignment/helpers/theme.dart';

class TransparentBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.only(bottom: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: AppTheme.gray2),
            height: 150,
            width: 150,
          ); //empty boxes (no child)
        },
      ),
    );
  }
}
