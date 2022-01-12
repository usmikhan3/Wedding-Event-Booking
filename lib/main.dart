import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:signature_event_booking/constants/constants.dart';

import 'package:signature_event_booking/provider/provider.dart';

import 'package:signature_event_booking/views/login/login2_view.dart';
import 'package:signature_event_booking/views/login/login3_view.dart';




void main() {
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => const MyApp(),
  // ));
 runApp( const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: () => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Signature Banquet',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
              primaryColor: kThemeColor,
              primarySwatch: Colors.red,
              fontFamily: "ProximaNova",
            textTheme: TextTheme(
              bodyText1: TextStyle(),
              bodyText2: TextStyle(),
            ).apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
          ),

          // routes: {
          //   '/splash': (context) => SplashView(),
          //   '/home': (context) => HomeView(),
          //   '/login': (context) => LoginView(),
          //   '/schedule': (context) => AddEventDetialsView(),
          //   '/customer': (context) => CustomersListView(),
          //   '/partner': (context) => PartnerListView(),
          //   // '/detail': (context) => CustomerDetailView(event: ,),
          // },
          //initialRoute: '/splash',
          home: Login3View(),
        ),
      ),
    );
  }
}
