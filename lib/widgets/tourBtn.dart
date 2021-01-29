import 'package:flutter/material.dart';
import 'package:intern_assignment/screens/explore.dart';
import '../helpers/theme.dart';

class TourBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //passing the control to Explore page
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Explore()));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            color: AppTheme.gray1, borderRadius: BorderRadius.circular(20)),
        child: Text(
          "Let's take a Tour",
          textAlign: TextAlign.center,
          style:
              TextStyle(color: AppTheme.primaryForegroundColor, fontSize: 25),
        ),
      ),
    );
  }
}
