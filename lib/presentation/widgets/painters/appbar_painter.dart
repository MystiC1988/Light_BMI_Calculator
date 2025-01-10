import 'package:flutter/material.dart';

class AppBarPainter extends CustomPainter {
  Brightness brightness;
  AppBarPainter({required this.brightness});
  @override
  void paint(Canvas canvas, Size size) {
    // Shadow paint
    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8.0)
      ..style = PaintingStyle.fill;

    // Main paint
    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: brightness == Brightness.dark
            ? [
                const Color.fromARGB(255, 32, 15, 74),
                const Color.fromARGB(255, 36, 19, 73),
              ]
            : [
                const Color.fromARGB(255, 67, 1, 166),
                const Color.fromARGB(255, 83, 20, 220),
              ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
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
