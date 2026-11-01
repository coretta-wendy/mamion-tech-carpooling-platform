import 'package:flutter/material.dart';

import 'body_page/body_sign_in.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(context),
      backgroundColor: Colors.grey.shade100,
      body: const BodySignIn(),
      //bottomNavigationBar: Footer_all(),
    );
  }
}
