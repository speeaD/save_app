import 'package:flutter/material.dart';

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
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: MediaQuery.textScalerOf(context).scale(14),
              fontWeight: FontWeight.w700,
              letterSpacing: 1.05,
            ),
          ),
        ),
      ),
    );
  }
}
