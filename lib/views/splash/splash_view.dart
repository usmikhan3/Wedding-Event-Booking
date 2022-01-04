import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:signature_event_booking/constants/constants.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  initState()  {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushNamed(context, '/login'),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/images/logo.png")),
          SizedBox(height: 200.h,),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
