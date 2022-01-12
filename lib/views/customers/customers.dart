import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/models/event_model.dart';
import 'package:signature_event_booking/views/calendar/all_dates_view.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'all_customers.dart';
import 'hold.dart';
import 'booked.dart';

class CustomersListView extends StatefulWidget {

  const CustomersListView({Key? key}) : super(key: key);

  @override
  _CustomersListViewState createState() => _CustomersListViewState();
}

class _CustomersListViewState extends State<CustomersListView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kThemeColor,
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Row(
              children: [
                SizedBox(width: 20.w,),
                Container(

                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: kThemeColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Icon(Icons.arrow_back_ios,color: kAccentColor,size: 20.h,),
                ),
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: Row(
                children: [

                  Container(

                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: kThemeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Icon(Icons.edit,color: kAccentColor,size: 20.h,),
                  ),
                  SizedBox(width: 20.w,),
                ],
              ),
            ),
          ],
          title: Text("Customer Details",style: TextStyle(color: kThemeColor,fontSize: 19.5.sp,fontWeight: FontWeight.bold,),),
          backgroundColor: Colors.white,
          elevation: 0.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
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
            height: 50.h,
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
                  child: Text("BOOKED",style: TextStyle(fontSize: 14.sp),),
                ),
                Tab(

                  child: Text("HOLD",style: TextStyle(fontSize:14.sp),),
                ),

                Tab(
                  child: Text("ALL",style: TextStyle(fontSize: 14.sp),),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              child: TabBarView(
                children:  [
                  BookedCustomerView(),
                  HoldCustomerView(),

                 AllCustomersView()
                ],
              ),
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
