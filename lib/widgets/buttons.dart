import 'package:flutter/material.dart';
import 'package:save_app/styles/text_spans.dart';

import '../styles/colors.dart';

class AppButton extends StatelessWidget {
  final Color? background;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback? onTap;
  final String text;
  const AppButton({
    super.key,
    this.background,
    required this.text,
    this.textColor,
    this.onTap,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: background ?? Hue.kPrimaryBlue,
          border: Border.all(
            color: borderColor ?? Hue.kPrimaryBlue,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: AppText(
            text: text,
            color: textColor ?? Colors.white,
            fontSize: 14,
            letterSpacing: 1.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
