import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({Key? key, this.images, this.title, this.subtitle})
      : super(key: key);
  final String? images, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(images!),
          width: 250,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Text(
            subtitle!,
            style: const TextStyle(
              fontSize: 15,
              letterSpacing: 1.5,
              fontStyle: FontStyle.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
