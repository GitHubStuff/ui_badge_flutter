library ui_badge;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class UIBadge extends StatelessWidget {
  late final double circleDiameter;
  final double borderPadding = 14.0;
  final num value;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;
  final Function(double)? widthCallback;

  // ignore: prefer_const_constructors_in_immutables
  UIBadge({
    super.key,
    required this.value,
    this.backgroundColor = const Color(0xffff0800),
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.borderWidth = 2.0,
    this.widthCallback,
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
    circleDiameter = textWidth + borderWidth + borderPadding;

    // Invoke the callback with the calculated width
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widthCallback != null) widthCallback!(circleDiameter);
    });

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

  double get radius => circleDiameter / 2.0;

  double _getFontSize(num value) {
    if (value < 10) return 18.0;
    if (value < 100) return 19.0;
    if (value < 1000) return 20.0;
    if (value < 10000) return 21.0;
    if (value < 100000) return 22.0;
    return 24.0;
  }
}
