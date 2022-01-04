import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final bool obscure;
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.textInputType,
    required this.textInputAction,
    required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 5.h,
      ),
      height: 50.h,
      width: 300.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: TextField(
        textInputAction: textInputAction,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14),
          border: InputBorder.none,
        ),
      ),
    );
  }
}