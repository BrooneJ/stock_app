import 'package:flutter/material.dart';
import 'package:stock_app/domain/model/intraday_info.dart';
import 'dart:ui' as ui;

class StockChart extends StatelessWidget {
  final List<IntradayInfo> infos;
  final Color color;

  const StockChart({
    super.key,
    this.infos = const [],
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: CustomPaint(
        painter: ChartPainter(infos, color),
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<IntradayInfo> infos;
  final Color color;

  late int upperValue =
      infos.map((e) => e.close).fold<double>(0, (a, b) => a > b ? a : b).ceil();

  late int lowerValue = infos
      .map((e) => e.close)
      .fold<double>(double.infinity, (a, b) => a < b ? a : b)
      .floor();

  final spacing = 50.0;

  late Paint strokePaint;

  ChartPainter(
    this.infos,
    this.color,
  ) {
    strokePaint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final priceStep = (upperValue - lowerValue) / 5.0;
    for (var i = 0; i < 5; i++) {
      final price = lowerValue + priceStep * i;
      final y = size.height - i * size.height / 5;
      final textPainter = TextPainter(
        text: TextSpan(
          text: '${price.round()}',
          style: TextStyle(
            fontSize: 12,
            color: color,
          ),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      textPainter.paint(
          canvas, Offset(5, y - textPainter.height / 2 - spacing));
    }

    final spacePerHour = (size.width - spacing) / infos.length;
    for (var i = 0; i < infos.length; i += 12) {
      final hour = infos[i].date.hour;

      final tp = TextPainter(
        text: TextSpan(
          text: '$hour',
          style: TextStyle(
            fontSize: 12,
            color: color,
          ),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr,
      );
      tp.layout();
      tp.paint(
          canvas, Offset(i * spacePerHour + spacing, size.height - tp.height));
    }

    var lastX = 0.0;
    final strokePath = Path();
    for (var i = 0; i < infos.length; i++) {
      final info = infos[i];
      var nextIndex = i + 1;
      if (i + 1 > infos.length - 1) nextIndex = infos.length - 1;
      final nextInfo = infos[nextIndex];
      final leftRatio = (info.close - lowerValue) / (upperValue - lowerValue);

      final rightRatio =
          (nextInfo.close - lowerValue) / (upperValue - lowerValue);
      final x1 = spacing + i * spacePerHour;
      final y1 = size.height - (leftRatio * size.height).toDouble();
      final x2 = spacing + (i + 1) * spacePerHour;
      final y2 = size.height - (rightRatio * size.height).toDouble();

      if (i == 0) {
        strokePath.moveTo(x1, y1);
      }
      lastX = (x1 + x2) / 2.0;
      strokePath.quadraticBezierTo(x1, y1, lastX, (y1 + y2) / 2.0);
    }

    final fillPath = Path.from(strokePath)
      ..lineTo(lastX, size.height - spacing)
      ..lineTo(spacing, size.height - spacing)
      ..close();

    final fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
        Offset.zero,
        Offset(0, size.height - spacing),
        [
          color.withOpacity(0.4),
          Colors.transparent,
        ],
      );

    canvas.drawPath(fillPath, fillPaint);

    canvas.drawPath(strokePath, strokePaint);
  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) {
    return oldDelegate.infos != infos;
  }
}
