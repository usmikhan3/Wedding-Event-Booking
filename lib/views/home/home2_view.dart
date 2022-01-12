import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/views/calendar/all_dates_view.dart';
import 'package:signature_event_booking/views/customers/all_customers.dart';
import 'package:signature_event_booking/views/customers/customers.dart';
import 'package:signature_event_booking/views/customers/hold.dart';
import 'package:signature_event_booking/views/customers/booked.dart';
import 'package:signature_event_booking/views/partners/partner_list_view.dart';

class Home2View extends StatefulWidget {
  const Home2View({Key? key}) : super(key: key);

  @override
  _Home2ViewState createState() => _Home2ViewState();
}

class _Home2ViewState extends State<Home2View> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        backgroundColor: kThemeColor,
          key: scaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            leading: GestureDetector(
              onTap: () => scaffoldKey.currentState!.openDrawer(),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: kThemeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/images/drawer_icon.png"),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: kThemeColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(
                        image: AssetImage("assets/images/home_icon.png"),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
              ),
            ],

            backgroundColor: Colors.white,
            elevation: 0.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
          ),
          drawer: Drawer(
            child: Container(
              color: kAccentColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 250.h,
                  ),
                  ListTile(
                    title: const Text(
                      'List of Customers',
                      style: TextStyle(color: kThemeColor),
                    ),
                    leading: Image.asset("assets/images/person.png"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CustomersListView()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20.h,
                    ),
                  ),
                  ListTile(
                    title: const Text('List of Partners',
                        style: TextStyle(color: kThemeColor)),
                    leading: Image.asset("assets/images/partners.png"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PartnerListView()));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20.h,
                    ),
                  ),
                  ListTile(
                    title: const Text('Exit App',
                        style: TextStyle(color: kThemeColor)),
                    leading: Image.asset("assets/images/exit.png"),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
            child: GlassmorphicContainer(
              border: 2,
              height: 999.h,
              width: MediaQuery.of(context).size.width,
              borderRadius: 20,
              linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF848181).withOpacity(0.5),
                    Color(0xFF848181).withOpacity(0.05),
                  ],
                  stops: [
                    0.1,
                    1,
                  ]),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFffffff).withOpacity(0.5),
                  Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              blur: 20,
              child: Column(
                children: [


                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    height: 55.h,
                    width: 285.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFffcf40)),
                    child: TabBar(
                      indicatorColor: kThemeColor,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          child: Text(
                            "BOOKED",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "HOLD",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "ALL",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Container(
                      child: TabBarView(
                        children: [
                          BookedCustomerView(),
                          HoldCustomerView(),
                          AllDatesView(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
// Column(
// children: [
// SizedBox(
// height: 30.h,
// ),
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// GestureDetector(
//
// child: Container(
// height: 50.h,
// width: 50.w,
// decoration: BoxDecoration(
// color: kThemeColor,
// borderRadius: BorderRadius.circular(10),
// ),
// child: Image(
// image: AssetImage("assets/images/drawer_icon.png"),
// ),
// ),
// onTap: ()=>scaffoldKey.currentState!.openDrawer(),
// ),
// Container(
// height: 50.h,
// width: 50.w,
// decoration: BoxDecoration(
// color: kThemeColor,
// borderRadius: BorderRadius.circular(10),
// ),
// child: Image(
// image: AssetImage("assets/images/home_icon.png"),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 50.h,
// ),
// Container(
// height: 55.h,
// width: 285.w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(30),
// color: Color(0xFFffcf40)),
// child: TabBar(
// indicatorColor: kThemeColor,
// unselectedLabelColor: Colors.black,
// labelColor: Colors.black,
// indicatorSize: TabBarIndicatorSize.label,
// tabs: [
// Tab(
// child: Text("BOOKED",style: TextStyle(fontSize: 14.sp),),
// ),
// Tab(
//
// child: Text("HOLD",style: TextStyle(fontSize:14.sp),),
// ),
//
// Tab(
// child: Text("ALL",style: TextStyle(fontSize: 14.sp),),
// ),
// ],
// ),
// ),
//
// Expanded(
// child: Container(
// child: TabBarView(
// children:  [
// BookedCustomerView(),
// HoldCustomerView(),
//
// AllDatesView(),
// ],
// ),
// ),
// ),
// ],
// ),
