import 'package:flutter/material.dart';
import 'dart:math';

class GradientCircularProgressIndicator extends StatelessWidget {
  final double progress;
  final Gradient gradient;
  final Color? backgroundColor;
  final double? stroke;
  final double? size;
  final Widget? child;

  const GradientCircularProgressIndicator({
    super.key,
    required this.progress,
    required this.gradient,
    this.backgroundColor,
    this.stroke,
    this.size,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: size != null ? Size(size!, size!) : MediaQuery.sizeOf(context),
      painter: _GradientCircularProgressPainter(
          progress: progress,
          gradient: gradient,
          backgroundColor: backgroundColor ?? Colors.transparent,
          stroke: stroke),
      child: SizedBox(
        height: size,
        width: size,
        child: child,
      ),
    );
  }
}

class _GradientCircularProgressPainter extends CustomPainter {
  final double progress;
  final Gradient gradient;
  final Color backgroundColor; // New parameter for background color
  final double? stroke;

  _GradientCircularProgressPainter({
    required this.progress,
    required this.gradient,
    required this.backgroundColor,
    this.stroke,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    const startAngle = -pi / 2;
    const fullSweepAngle = 2 * pi;
    final progressSweepAngle = 2 * pi * progress;

    final backgroundPaint = Paint()
      ..color = backgroundColor // Set the background color
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke ?? size.width / 10;

    final gradientPaint = Paint()
      ..shader =
          gradient.createShader(Rect.fromCircle(center: center, radius: radius))
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke ?? size.width / 10;

    // Draw the background arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle + progressSweepAngle,
      fullSweepAngle - progressSweepAngle,
      false,
      backgroundPaint,
    );

    // Draw the gradient arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      progressSweepAngle,
      false,
      gradientPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
