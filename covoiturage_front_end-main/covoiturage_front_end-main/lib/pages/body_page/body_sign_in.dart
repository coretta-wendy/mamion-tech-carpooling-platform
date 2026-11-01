// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../common/constant.dart';
import '../acceuil.dart';
import '../componant_page/button_authentification.dart';
import '../componant_page/input_text.dart';
import '../sign_up.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 2, vertical: kDefaultPadding * 4),
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const Text(
              "Sign in to continue!",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.grey),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: size.width / 2,
                height: 30,
                fit: BoxFit.fill,
                color: kPrimaryColor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            ),
            InputContainer("tagakou", "user name", false),
            InputContainer("tagakou", "password", true),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            ),
            Container(),
            ButtonAuth(
              function: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Acceuil()));
              }),
              text: "Login",
            ),
            const Center(
              child: Text(
                "or",
                style: TextStyle(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Container(
                  width: size.width * 0.75,
                  height: 50,
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, right: kDefaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radiusBorder),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.g_mobiledata,
                        color: kPrimaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      Text(
                        "Connexion avec google",
                        style: TextStyle(
                            color: kTeXTColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Container(
                  width: size.width * 0.75,
                  height: 50,
                  padding: const EdgeInsets.only(
                      left: kDefaultPadding, right: kDefaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radiusBorder),
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      Text(
                        "Connexion avec Facebook",
                        style: TextStyle(
                            color: kTeXTColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            ),
            const Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "I'm a new user,  ",
                    style: TextStyle(
                        color: kTeXTColor, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUp()))
                    },
                    child: const Text(
                      "Sign Up ",
                      style: TextStyle(color: ksecondaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
