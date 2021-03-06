import 'package:flutter/material.dart';

import '../../constants.dart';


class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;
  const TextInputField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.isObscure = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        prefixIcon: Icon(icon,color: Colors.white,),
        labelStyle: const TextStyle(
          fontSize: 20,color: Colors.white
        ),
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:  BorderSide(
              color: borderColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:  BorderSide(
              color: borderColor,
            )),
      ),
      obscureText: isObscure,
    );
  }
}
