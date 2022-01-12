import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/views/home/home2_view.dart';
import 'package:signature_event_booking/widgets/custom_button2.dart';
import 'package:signature_event_booking/widgets/custom_text_field2.dart';
import 'package:signature_event_booking/widgets/cutom_button.dart';

class Login3View extends StatefulWidget {
  const Login3View({Key? key}) : super(key: key);

  @override
  State<Login3View> createState() => _Login3ViewState();
}

class _Login3ViewState extends State<Login3View> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/loginBG.jpg",
          ),
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50.h),
                Image.asset("assets/images/logo.png"),
                SizedBox(height: 80.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                     const CustomTextField2(
                        hintText: "Username",
                        labelText: "Username",
                        obscure: false,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20.h),
                    const  CustomTextField2(
                        hintText: "Password",
                        labelText: "Password",
                        obscure: true,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                      ),
                      SizedBox(height: 20.h),
                      CustomButton2(
                        text: 'LOGIN',
                        onPress: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>Home2View())),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
