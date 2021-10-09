// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String labelText;
  final IconData iconData;
  final void Function() onPress;

  PrimaryButton(
      {required this.labelText, required this.iconData, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.maxFinite,
      height: 100.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: 40.0, vertical: 30.0), //edited vertical
          primary: Theme.of(context).primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
        onPressed: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            SizedBox(
              width: 10.0,
            ),
            Text(
              labelText,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
