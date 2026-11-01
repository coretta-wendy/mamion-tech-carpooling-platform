import 'package:flutter/material.dart';

import '../../common/constant.dart';

// ignore: must_be_immutable
class InputContainer extends StatefulWidget {
  InputContainer(this.hintText, this.labelText, this.isPassword, {Key? key})
      : super(key: key);
  String hintText;
  String labelText;
  bool isPassword;

  @override
  State<InputContainer> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
  void rendVisble() {
    setState(() {
      if (visible == true) {
        visible = false;
      } else {
        visible = true;
      }
    });
  }

  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: widget.isPassword ? visible : true,
        decoration: InputDecoration(
          labelText: widget.labelText,
          fillColor: Colors.white,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    rendVisble();
                  },
                  icon: const Icon(Icons.visibility),
                  color: kPrimaryColor,
                )
              : null,
          hintText: widget.isPassword ? "" : widget.hintText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black12, width: 2.0),
            borderRadius: BorderRadius.circular(radiusBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black12, width: 2.0),
            borderRadius: BorderRadius.circular(radiusBorder),
          ),
        ),
      ),
    );
  }
}
