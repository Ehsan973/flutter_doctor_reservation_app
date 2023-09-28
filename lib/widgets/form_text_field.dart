import 'package:flutter/material.dart';

import '../constants.dart';

class FormTextField extends StatelessWidget {
  FormTextField({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            label: Text(
              text,
            ),
            labelStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: const Color.fromARGB(255, 199, 199, 199),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: primaryColor,
              ),
            ),
            floatingLabelStyle: TextStyle(
              fontSize: 16,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: primaryColor,
              ),
            )),
      ),
    );
  }
}
