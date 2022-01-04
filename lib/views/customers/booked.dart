import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/views/details/detail_booked_view.dart';
class BookedCustomerView extends StatefulWidget {
  const BookedCustomerView({Key? key}) : super(key: key);

  @override
  _BookedCustomerViewState createState() => _BookedCustomerViewState();
}

class _BookedCustomerViewState extends State<BookedCustomerView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h,),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kThemeColor,
              borderRadius: BorderRadius.circular(30),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kAccentColor, fontSize: 14.sp),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kAccentColor, fontSize: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    'Booked',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerBookedDetailView()));
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: kThemeColor,
              borderRadius: BorderRadius.circular(30),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kAccentColor, fontSize: 14.sp),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kAccentColor, fontSize: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    'Booked',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerBookedDetailView()));
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: kThemeColor,
              borderRadius: BorderRadius.circular(30),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kAccentColor, fontSize: 14.sp),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kAccentColor, fontSize: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    'Booked',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerBookedDetailView()));
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: kThemeColor,
              borderRadius: BorderRadius.circular(30),

            ),
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    '03-01-2022',
                    style: TextStyle(
                        color: kAccentColor, fontSize: 14.sp),
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Selected Event',
                    style: TextStyle(
                        color:kAccentColor, fontSize: 14.sp),
                  ),
                  Spacer(),
                  Text(
                    'Booked',
                    style:
                    TextStyle(fontSize: 17.sp,color: Colors.white),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerBookedDetailView()));
              },
            ),
          ),


        ],
      ),
    );
  }
}
