import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/views/home/home2_view.dart';
import 'package:signature_event_booking/widgets/cutom_button.dart';

class Login2View extends StatefulWidget {
  const Login2View({Key? key}) : super(key: key);

  @override
  _Login2ViewState createState() => _Login2ViewState();
}

class _Login2ViewState extends State<Login2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("assets/images/login_top2.png"),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 49.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Please login to your account.",
                    style: TextStyle(fontSize: 18.sp, color: Color(0xFF707070)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 49.w),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xFFA2A2A2),
                        ),
                        labelText: "Username",
                        hintText: "Username",
                        labelStyle: TextStyle(
                            color: Color(0xFF7D1E00), fontSize: 14.sp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp, color: Color(0xFF777A7D))),
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xFFA2A2A2),
                        ),
                        labelText: "Password",
                        hintText: "Password",
                        labelStyle: TextStyle(
                            color: Color(0xFF7D1E00), fontSize: 14.sp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp, color: Color(0xFF777A7D))),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    text: "LOGIN",
                    onPress: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Home2View(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Color(0xFF7D1E00), fontSize: 14.sp),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
