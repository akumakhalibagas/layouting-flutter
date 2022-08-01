import 'package:flutter/material.dart';
import 'package:flutter_layouting/page/onboarding/onboarding_body.dart';

class OnboardingPage extends StatelessWidget {
  static String routeName = "/onboarding";

  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnboardingBody(),
      ),
    );
  }
}
