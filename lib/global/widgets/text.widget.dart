import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String dataString;
  final TextStyle? style;
  final TextAlign? textAlign;
  const TextWidget(
    this.dataString, {
    super.key,
    this.style,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      dataString,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: style?.fontSize,
        fontWeight: style?.fontWeight,
        color: style?.color,
      ),
    );
  }
}
