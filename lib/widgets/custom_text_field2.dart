import 'package:flutter/material.dart';
import 'package:signature_event_booking/constants/constants.dart';

class CustomTextField2 extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscure;
  const CustomTextField2({
    Key? key,
    required this.hintText,
    required this.textInputType,
    required this.textInputAction,
    required this.obscure,required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      obscureText: obscure,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
            BorderSide(color: kAccentColor, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
            BorderSide(color: kAccentColor, width: 2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
            BorderSide(color:kAccentColor, width: 2)),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white60),
        labelText: labelText,
        labelStyle:  TextStyle(color: Colors.white),
      ),
    );
  }
}
