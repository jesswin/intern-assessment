import 'package:flutter/material.dart';
import 'package:intern_assignment/widgets/closeBadge.dart';
import '../helpers/theme.dart';

class RoundedContainer extends StatelessWidget {
  final data;
  final emoji;
  final selected;
  RoundedContainer(this.data, {this.emoji, this.selected = false});
  @override
  Widget build(BuildContext context) {
    return !selected //to check if it's a selected container
        ? Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: emoji == null //checking if emoji is provided in list?
                ? Center(
                    child: Text(
                      data,
                      style: TextStyle(fontSize: 25, color: AppTheme.white),
                    ),
                  )
                : Text(
                    "$emoji " " $data",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppTheme.white,
                    ),
                  ), //text with emoji if present in list
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppTheme.transparent,
            ),
            //to keep all the containers uniformly.
            //constraints: BoxConstraints(minWidth: 150),
          )

        //selected container
        : Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Center(
                  child: Text(
                    data,
                    style: TextStyle(
                        fontSize: 25,
                        color: AppTheme.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppTheme.primaryForegroundColor,
                ),
              ),
              CloseBadge() //close icon stacked on container
            ],
          );
  }
}
