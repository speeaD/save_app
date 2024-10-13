import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../widgets/buttons.dart';

@RoutePage()
class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/onboard_image.png",
                height: size.height * 0.55,
              ),
              Text(
                "Simplified Pool Savings",
                style: TextStyle(
                  fontSize: MediaQuery.textScalerOf(context).scale(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "With Fusion, you can contribute, save and manage your funds with savings group",
                style: TextStyle(
                  fontSize: MediaQuery.textScalerOf(context).scale(15),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              const AppButton(text: 'Create Account'),
              const SizedBox(height: 10),
              const AppButton(
                text: 'Login',
                background: Hue.kGreyBackground,
                textColor: Hue.kPrimaryBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
