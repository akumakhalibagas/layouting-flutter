import 'package:flutter/material.dart';

class AppBarChakra extends StatelessWidget {
  const AppBarChakra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: Image.asset(('assets/images/img_chakra.png'),
          fit: BoxFit.cover, width: 125),
    );
  }
}

class AppBarApps extends StatelessWidget {
  final String title;
  const AppBarApps({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 17),
          ),
          const Text('')
        ],
      ),
    );
  }
}
