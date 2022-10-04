import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  TextComponent({
    super.key,
    required this.text,
    required this.colors,
    required this.fontSize,
    required this.fontWeight,
  });

  String text;
  Color colors;
  double fontSize;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Outfit',
          color: colors,
          fontSize: fontSize,
          fontWeight: fontWeight),
    );
  }
}
