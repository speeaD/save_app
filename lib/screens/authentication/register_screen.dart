import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_app/widgets/text_field.dart';

import '../../styles/colors.dart';
import '../../styles/text_spans.dart';
import '../../widgets/buttons.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextSpan(
                        text1: "Create your ",
                        text2: "Fusion ",
                        text3: "account",
                        color2: Hue.kPrimaryBlue,
                        fontWeight: FontWeight.w600,
                        size: 18,
                      ),
                      AppText(
                        text: 'Fill out all the information correctly',
                      ),
                      AppTextField(
                        labelText: "Legal First Name",
                        isPassword: false,
                      ),
                      AppTextField(
                        labelText: "Email Address",
                        isPassword: false,
                      ),
                      AppTextField(
                        labelText: "Password",
                        isPassword: false,
                      ),
                    ],
                  ),
                ),
              ),
              AppButton(text: "Continue"),
              SizedBox(height: 20),
              Center(
                child: AppTextSpan(
                  text1: "Already have an account? ",
                  text2: "Login",
                  color2: Hue.kPrimaryBlue,
                  size: 15,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
