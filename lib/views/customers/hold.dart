import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/models/event_model.dart';
import 'package:signature_event_booking/views/details/customer_detail_view.dart';
import 'package:signature_event_booking/views/details/detail_hold_view.dart';
class HoldCustomerView extends StatefulWidget {
  const HoldCustomerView({Key? key}) : super(key: key);

  @override
  _HoldCustomerViewState createState() => _HoldCustomerViewState();
}

class _HoldCustomerViewState extends State<HoldCustomerView> {
  late final Event event;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h,),
      child: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(10),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Hold',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerHoldDetailView()));
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(10),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Hold',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerHoldDetailView()));
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(10),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Hold',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerHoldDetailView()));
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(10),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Hold',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerHoldDetailView()));
              },
            ),
          ),


        ],
      ),
    );
  }
}
