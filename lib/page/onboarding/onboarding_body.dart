import 'package:flutter/material.dart';
import 'package:flutter_layouting/page/components/appbar_chakra.dart';
import 'package:flutter_layouting/page/components/primary_button.dart';
import 'package:flutter_layouting/page/onboarding/onboarding_item.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentPage = 0;
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
    return SizedBox(
      width: double.infinity,
      child: Container(
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
                      currentPage = values;
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
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(listOnboarding.length,
                          (index) => initDot(index: index)),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                      child: PrimaryButton(
                        text: "Next",
                        press: () {
                          controller.animateToPage(currentPage,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Already have an account? "),
                        Text(
                          " Sign in",
                          style:
                              TextStyle(color: Color.fromRGBO(8, 192, 255, 1)),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer initDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
