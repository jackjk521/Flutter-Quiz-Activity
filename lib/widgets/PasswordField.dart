// ignore: file_names

// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final bool obscureText;
  final Function onTap;

  PasswordField(
      {required this.labelText,
      required this.hintText,
      required this.iconData,
      required this.textEditingController, //not needed idk why it will error
      required this.textInputType,
      required this.obscureText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
          prefixIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            child: Icon(Icons.lock),
          ),
          suffixIcon: GestureDetector(
            onTap: onTap(),
            child: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
          ),
          labelText: labelText,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))),
    );
  }

  // void onTap({});
}
