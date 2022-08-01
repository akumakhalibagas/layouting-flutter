import 'package:flutter/material.dart';
import 'package:flutter_layouting/components/primary_button.dart';

import '/components/appbar.dart';
import '../login/login_page.dart';

class RegisterPage extends StatefulWidget {
  static String routeName = "/register";
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AppBarApps(
                            title: 'Create an account',
                          ),
                          const SizedBox(height: 16),
                          const Image(
                            width: 220,
                            height: 220,
                            image: AssetImage('assets/images/img_login.png'),
                          ),
                          const SizedBox(height: 50),
                          const Text(
                            'Let’s get started',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              const Text("Already have an account? "),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, LoginPage.routeName);
                                },
                                child: const Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Color.fromRGBO(8, 192, 255, 1)),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Use your phone number to create an account',
                            style: TextStyle(
                              wordSpacing: 3,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(228, 228, 228, 1),
                                ),
                                child: const Center(
                                  child: Text(
                                    "+62",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: "8000 0000 0000",
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'By continuing, you agree to Chakra’s Term & Condition and Privacy Policy',
                          style: TextStyle(
                            wordSpacing: 3,
                          ),
                        ),
                      ),
                      Container(
                        color: const Color.fromRGBO(229, 248, 255, 1),
                        width: double.infinity,
                        child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: PrimaryButton(
                            text: 'Next',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
