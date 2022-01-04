import 'package:flutter/material.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToggleField extends StatelessWidget {
  final String heading;

  final Widget child;

  const CustomToggleField({Key? key, required this.heading,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontSize: 12.75.sp,
            color: Color(0xFF7F8D9F),
          ),
        ),
        SizedBox(height: 20.h,),
        Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
        SizedBox(height: 10.h,),
        Divider(
          color: Colors.black38,
          thickness: 1.h,
        ),
        //SizedBox(height: 25.h,),
      ],
    );
  }
}
