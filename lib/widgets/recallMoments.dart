import 'package:flutter/material.dart';
import 'package:intern_assignment/helpers/theme.dart';

class RecallMoments extends StatelessWidget {
  final moments;
  RecallMoments(this.moments);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, //keeping scroll horizontal
        itemCount: moments.length,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text(
                  moments[index].emoji,
                  style: TextStyle(fontSize: 60),
                ),
                decoration: BoxDecoration(
                  color: AppTheme.transparent,
                  borderRadius: BorderRadius.circular(15),
                )),
            Text(
              moments[index].title,
              style: TextStyle(fontSize: 25, color: AppTheme.white),
            )
          ]);
        },
      ),
    );
  }
}
