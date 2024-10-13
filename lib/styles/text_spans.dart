import 'package:flutter/material.dart';

class AppTextSpan extends StatelessWidget {
  final String text1;
  final String text2;
  final String? text3;
  final Color color1;
  final Color color2;
  const AppTextSpan(
      {super.key,
      required this.text1,
      required this.text2,
      this.text3,
      required this.color1,
      required this.color2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: text1, style: TextStyle(), children: [
        TextSpan(
          text: text2,
          style: TextStyle(),
        ),
      ]),
    );
  }
}

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final double? letterSpacing;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const AppText({
    super.key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.color,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize ?? 16.0),
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: TextAlign.center,
    );
  }
}
