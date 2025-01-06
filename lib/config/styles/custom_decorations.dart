import 'package:flutter/material.dart';

class CustomDecorations {
  static const BoxDecoration bgDarkGradientDecoration = BoxDecoration(
    gradient: RadialGradient(
      center: Alignment.topLeft,
      radius: 2.0,
      colors: [
        Color(0xFF2A1446),
        Color(0xFF06162E),
      ],
    ),
  );
}
