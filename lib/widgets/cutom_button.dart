import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomButton({
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 55.h,
        width: 330.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFffcf40),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color:  kThemeColor, fontSize: 16.sp, fontWeight: FontWeight.bold),
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