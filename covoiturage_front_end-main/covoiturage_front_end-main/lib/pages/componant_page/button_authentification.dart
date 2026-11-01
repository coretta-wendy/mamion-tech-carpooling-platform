// fait pour le bouton de connexion ou d'inscription

import 'package:flutter/material.dart';
import '../../common/constant.dart';

class ButtonAuth extends StatelessWidget {
  final Function() function;
  final String text;

  const ButtonAuth({
    Key? key,
    required this.function,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: TextButton(
        onPressed: function,
        child: Container(
          margin: const EdgeInsets.only(top: 25),
          width: size.width * 0.75,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.grey.shade100,
                kPrimaryColor,
                kPrimaryColor,
              ],
            ),
            borderRadius: BorderRadius.circular(radiusBorder),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
