import 'package:flutter/material.dart';
import 'package:flutter_layouting/components/primary_button.dart';
import 'package:flutter_layouting/page/register/register_page.dart';

import '/components/appbar.dart';

class LoginPage extends StatefulWidget {
  static String routeName = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarApps(
                    title: 'Login',
                  ),
                  const SizedBox(height: 16),
                  const Image(
                    width: 220,
                    height: 220,
                    image: AssetImage('assets/images/img_login.png'),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text("New user? "),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.routeName);
                        },
                        child: const Text(
                          "Create an account",
                          style:
                              TextStyle(color: Color.fromRGBO(8, 192, 255, 1)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'If you already in a Chakra, enter your phone\nnumber below',
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
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "0000 0000 0000",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const PrimaryButton(
                    text: 'Login',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
