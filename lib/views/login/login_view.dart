import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/widgets/custom_text_field.dart';
import 'package:signature_event_booking/widgets/cutom_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/images/texture.png",),
                      fit: BoxFit.cover
                )
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: width,
                    height: 573.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 80.h,
                    right: 50.w,
                    left: 50.w,
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 400.h,
                    right: 50.w,
                    left: 50.w,
                    child: Container(
                      height: 247.h,
                      width: 344.w,
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.brown.shade400,
                              blurRadius: 7,
                              spreadRadius: 1,
                              offset: Offset(3, 10),
                            )
                          ]),
                      child: Column(
                        children: [
                          const CustomTextField(
                            hintText: "Email Address",
                            obscure: false,
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          const CustomTextField(
                            hintText: "Password",
                            obscure: true,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),

                          CustomButton(
                            onPress: () {
                              print("print");
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            text: "LOGIN",
                          ),
                        ],
                      ),
                    ),
                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
