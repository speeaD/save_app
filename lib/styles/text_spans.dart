import 'package:flutter/material.dart';

class AppTextSpan extends StatelessWidget {
  final String text1;
  final String text2;
  final String? text3;
  final Color? color1;
  final Color? color2;
  final double? size;
  final FontWeight? fontWeight;
  const AppTextSpan(
      {super.key,
      required this.text1,
      required this.text2,
      this.text3,
      this.color1,
      this.color2,
      this.size,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: TextStyle(
            color: color1 ?? Colors.black,
            fontSize: MediaQuery.textScalerOf(context).scale(size ?? 16.0),
            letterSpacing: 0.55,
            fontWeight: fontWeight ?? FontWeight.normal),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(
                color: color2,
                fontSize: MediaQuery.textScalerOf(context).scale(size ?? 16.0),
                letterSpacing: 0.55,
                fontWeight: fontWeight ?? FontWeight.normal),
          ),
          TextSpan(
            text: text3 ?? '',
            style: TextStyle(
                color: color1,
                fontSize: MediaQuery.textScalerOf(context).scale(size ?? 16.0),
                fontWeight: fontWeight ?? FontWeight.normal),
          )
        ],
      ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: MediaQuery.textScalerOf(context).scale(fontSize ?? 16.0),
          letterSpacing: letterSpacing,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
