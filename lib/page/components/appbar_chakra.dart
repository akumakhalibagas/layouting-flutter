import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class AppBarChakra extends StatelessWidget {
  const AppBarChakra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: const Image(
          fit: BoxFit.cover,
          width: 125,
          image: Svg('assets/images/ic_chakra.svg')),
    );
  }
}
