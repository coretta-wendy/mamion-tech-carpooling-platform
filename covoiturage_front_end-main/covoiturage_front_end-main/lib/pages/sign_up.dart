import 'package:flutter/material.dart';

import 'body_page/body_sign_up.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(context),
      backgroundColor: Colors.grey.shade100,
      body: const BodySignUp(),
      //bottomNavigationBar: Footer_all(),
    );
  }
}
