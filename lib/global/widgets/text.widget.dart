import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String dataString;
  final TextStyle? style;
  const TextWidget(this.dataString, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(dataString, style: style);
  }
}
