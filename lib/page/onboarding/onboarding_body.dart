import 'package:flutter/material.dart';
import 'package:flutter_layouting/components/appbar.dart';
import 'package:flutter_layouting/components/primary_button.dart';
import 'package:flutter_layouting/page/login/login_page.dart';
import 'package:flutter_layouting/page/onboarding/onboarding_item.dart';
import 'package:flutter_layouting/page/register/register_page.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final _currentPageNotifier = ValueNotifier<int>(0);
  var _isLastPage = false;
  PageController controller = PageController(initialPage: 0);
  List<Map<String, String>> listOnboarding = [
    {
      "title": 'Welcome to Chakra',
      "subtitle":
          'Chakra Rewards is a customer rewards platform for all program and multi brand ',
      "images": 'assets/images/img_onboarding1.png'
    },
    {
      "title": 'Earn & Redeem',
      "subtitle": 'Collect the points and redeem it with various rewards',
      "images": 'assets/images/img_onboarding2.png'
    },
    {
      "title": 'Manage at Ease',
      "subtitle":
          'No more physical cards that occupy your wallet or download different apps for your membership',
      "images": 'assets/images/img_onboarding3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const AppBarChakra(),
          Expanded(
              flex: 3,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (values) {
                  setState(() {
                    _currentPageNotifier.value = values;
                    _isLastPage =
                        _currentPageNotifier.value == listOnboarding.length - 1;
                  });
                },
                itemBuilder: (context, i) {
                  return OnboardingItem(
                      images: listOnboarding[i]["images"],
                      title: listOnboarding[i]["title"],
                      subtitle: listOnboarding[i]["subtitle"]);
                },
                itemCount: listOnboarding.length,
              )),
          Expanded(
            child: Column(
              children: [
                CirclePageIndicator(
                  currentPageNotifier: _currentPageNotifier,
                  itemCount: listOnboarding.length,
                  size: 10,
                  selectedSize: 10,
                  dotColor: const Color.fromARGB(255, 184, 185, 185),
                  selectedDotColor: const Color.fromRGBO(8, 192, 255, 1),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: PrimaryButton(
                    text: _isLastPage ? 'Create your accout' : 'Next',
                    press: () {
                      _isLastPage
                          ? Navigator.pushNamed(context, RegisterPage.routeName)
                          : controller.animateToPage(
                              _currentPageNotifier.value + 1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.bounceOut);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginPage.routeName);
                      },
                      child: const Text(
                        " Sign in",
                        style: TextStyle(color: Color.fromRGBO(8, 192, 255, 1)),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
