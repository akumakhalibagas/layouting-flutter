import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, this.text, this.press}) : super(key: key);
  final String? text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(8, 192, 255, 1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(8, 192, 255, .2),
                  blurRadius: 50.0,
                  offset: Offset(0, 10))
            ]),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
