import 'package:flutter/material.dart';

class CustomDecorations {
  static const BoxDecoration bgDarkGradientDecoration = BoxDecoration(
    gradient: RadialGradient(
      center: Alignment.topLeft,
      radius: 2.0,
      colors: [
        Color.fromARGB(255, 22, 21, 23),
        Color.fromARGB(255, 7, 20, 39),
      ],
    ),
  );

  static const BoxDecoration bgLightGradientDecoration = BoxDecoration(
    gradient: RadialGradient(
      center: Alignment.topLeft,
      radius: 2.0,
      colors: [
        Color.fromARGB(255, 255, 255, 255),
        Color.fromARGB(255, 196, 204, 231),
      ],
    ),
  );
}
