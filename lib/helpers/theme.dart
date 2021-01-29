import 'package:flutter/material.dart';

class AppTheme {
  static final mode = "dark";

  // Color Pallette
  // Background
  static final primaryBackgroundColor =
      mode == "dark" ? const Color(0xFF1E1E1E) : null;
  static final secondaryBackgroundColor =
      mode == "dark" ? const Color(0xFF464646) : null;
  static final tertiaryBackgroundColor =
      mode == "dark" ? const Color(0xFF505050) : null;
  // Foreground
  static final primaryForegroundColor =
      mode == "dark" ? const Color(0xFF00EBB5) : null;
  // Colors

  static final logoColors = [
    const Color(0xFFA8D83B),
    const Color(0xFF3BD8B4),
    const Color(0xFF5FD83B),
    const Color(0xFF3BD88A),
  ];
  static final messageColors = [
    const Color(0xFF06FAC2),
    const Color(0xFF00EBB5),
    const Color(0xFF2FDDC2),
    const Color(0xFF17EDBC),
    const Color(0xFF00EB76),
    const Color(0xFF1BED85),
    const Color(0xFF1BED54),
    const Color(0xFF00FF45),
    /*
    const Color(0xFF80FF00),
    const Color(0xFF7DE515),
    const Color(0xFF87EA24),
    const Color(0xFFB5EA24),
    const Color(0xFFEAEA24),
    const Color(0xFFEDC624),
    const Color(0xFFFFCE00),
    // Reverse
    const Color(0xFFFFCE00),
    const Color(0xFFEDC624),
    const Color(0xFFEAEA24),
    const Color(0xFFB5EA24),
    const Color(0xFF87EA24),
    const Color(0xFF7DE515),
    const Color(0xFF80FF00),
    const Color(0xFF00FF45),
    */
    const Color(0xFF1BED54),
    const Color(0xFF1BED85),
    const Color(0xFF00EB76),
    const Color(0xFF17EDBC),
    const Color(0xFF2FDDC2),
    const Color(0xFF00EBB5),
    const Color(0xFF06FAC2),
  ];

  static final introColors = [
    const Color(0xFF06FAC2),
    const Color(0xFF00EB76),
    const Color(0xFF00FF45),
    const Color(0xFF80FF00),
    const Color(0xFFEAEA24),
    const Color(0xFFFFCE00),
  ];

  static final negativeColors = [
    const Color(0xFFF84141),
    const Color(0xFFE22727),
    const Color(0xFFFF0000),
  ];
  static final transparent = Colors.grey.withOpacity(0.3);
  static final white = const Color(0xFFFFFFFF);
  static final almostWhite = const Color(0xFFD8D8D8);
  static final black = const Color(0xFF000000);
  static final lightBlack = const Color(0xFF1E1E1E);
  static final lightGray = const Color(0xFF757575);
  static final darkGray = const Color(0xFF3B3B3B);
  static final green = const Color(0xFF00EB76);
  static final gray1 = const Color(0xFF262626);
  static final gray2 = const Color(0xFF272727);
}
