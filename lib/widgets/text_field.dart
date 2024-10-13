import 'package:flutter/material.dart';
import 'package:save_app/styles/colors.dart';
import 'package:save_app/styles/text_spans.dart';

class AppTextField extends StatefulWidget {
  final bool isPassword;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String labelText;
  final String? hintText;

  const AppTextField(
      {super.key,
      required this.isPassword,
      this.textInputType,
      this.controller,
      this.focusNode,
      required this.labelText,
      this.hintText});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: widget.labelText,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          TextFormField(
            controller: widget.controller,
            keyboardType: widget.textInputType,
            focusNode: widget.focusNode,
            decoration: InputDecoration(
              constraints: const BoxConstraints(
                minHeight: 50,
                maxHeight: 50,
              ),
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Hue.kPrimaryBlue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
