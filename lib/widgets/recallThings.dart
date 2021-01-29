import 'package:flutter/material.dart';
import 'package:intern_assignment/widgets/roundedContainers.dart';

class RecallThings extends StatelessWidget {
  final things;
  RecallThings(this.things);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, //keeping horizontal scroll
        itemBuilder: (context, index) {
          return RoundedContainer(things[index].title,
              emoji: things[index].emoji); //named argument
        },
        itemCount: things.length,
      ),
    );
  }
}
