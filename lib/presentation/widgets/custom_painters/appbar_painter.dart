import 'package:flutter/material.dart';

class AppBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Shadow paint
    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8.0)
      ..style = PaintingStyle.fill;

    // Main paint
    final paint = Paint()
      ..color = const Color.fromARGB(255, 21, 14, 35)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.154,
      size.height * 0.49,
      size.width * 0.5,
      size.height * 0.49,
    );
    path.quadraticBezierTo(
      size.width * 0.846,
      size.height * 0.49,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path.shift(const Offset(0, 4)), shadowPaint);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
