import 'package:flutter/material.dart';
import 'package:flutter_layouting/page/login/login_page.dart';
import 'package:flutter_layouting/page/onboarding/onboarding_page.dart';
import 'package:flutter_layouting/page/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: OnboardingPage.routeName,
      routes: routes,
    );
  }
}

final Map<String, WidgetBuilder> routes = {
  OnboardingPage.routeName: (context) => const OnboardingPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  RegisterPage.routeName: (context) => const RegisterPage(),
};
