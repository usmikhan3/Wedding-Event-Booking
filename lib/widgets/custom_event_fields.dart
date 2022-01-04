import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomEventField extends StatelessWidget {
const CustomEventField({
required this.controller,
required this.hintText,
required this.textInputType,
required this.textInputAction,
  required this.fieldName,
  required this.labelText,
  required this.onSubmitted,
Key? key,
}) : super(key: key);
final TextEditingController controller;
final String hintText;
final TextInputType textInputType;
final TextInputAction textInputAction;
final String labelText;
final String fieldName;
final VoidCallback onSubmitted;

@override
Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: TextStyle(
          fontSize: 12.75.sp,
          color: Color(0xFF7F8D9F),
        ),
      ),
      TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 19.5.sp),
          focusColor: Colors.black,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        validator: (value) => value != null && value.isEmpty
            ? '$fieldName can not be empty'
            : null,
        onFieldSubmitted: (_) => onSubmitted,


      ),
      Divider(
        color: Colors.black38,
        thickness: 1.h,
      ),
      SizedBox(height: 25.h,),
    ],
  );
}
}


