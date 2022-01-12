import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomButton2({
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 69.h,
        //width: 330.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kThemeColor,
          border: Border.all(color: kAccentColor)
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: kAccentColor, fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
// SizedBox(
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: Colors.black,
//           elevation: 0,
//           maximumSize: Size(300.w, 50.h),
//           minimumSize: Size(300.w, 50.h),
//         ),
//         autofocus: true,
//         onPressed: onPress,
//         child: Text(text),
//       ),
//     );