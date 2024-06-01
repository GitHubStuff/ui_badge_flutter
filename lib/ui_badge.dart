library ui_badge;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class UIBadge extends StatelessWidget {
  final double borderPadding = 14.0;
  final num value;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;

  const UIBadge({
    super.key,
    required this.value,
    this.backgroundColor = const Color(0xffff0800),
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    String formattedValue = NumberFormat('#,##0').format(value);
    double fontSize = _getFontSize(value);

    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: formattedValue,
        style: TextStyle(fontSize: fontSize),
      ),
      textDirection: ui.TextDirection.ltr,
    )..layout();

    double textWidth = textPainter.width;
    double circleDiameter = textWidth + borderWidth + borderPadding;

    return Container(
      width: circleDiameter,
      height: circleDiameter,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      alignment: Alignment.center,
      child: Text(
        formattedValue,
        style: TextStyle(fontSize: fontSize, color: textColor),
      ),
    );
  }

  double _getFontSize(num value) {
    if (value < 10) return 18.0;
    if (value < 100) return 19.0;
    if (value < 1000) return 20.0;
    if (value < 10000) return 21.0;
    if (value < 100000) return 22.0;
    return 24.0;
  }
}
