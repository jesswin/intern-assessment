import 'dart:ui';
import 'package:flutter/material.dart';

class BackDrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
        child: Container(
          color: Colors.black.withOpacity(0),
          height: 165,
        ),
      ),
    );
  }
}
