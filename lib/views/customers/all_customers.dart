import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/models/event_model.dart';
import 'package:signature_event_booking/views/details/detail_booked_view.dart';
import 'package:signature_event_booking/views/details/detail_hold_view.dart';

class AllCustomersView extends StatefulWidget {
  const AllCustomersView({Key? key}) : super(key: key);

  @override
  _AllCustomersViewState createState() => _AllCustomersViewState();
}

class _AllCustomersViewState extends State<AllCustomersView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      child: ListView(children: [
        Row(
          children: [
            Container(
              height: 71.h,
              width: 14.w,
              decoration: BoxDecoration(color: Color(0xFFE22635),borderRadius: BorderRadius.circular(20) ),
            
            ),
            SizedBox(width: 10.w,),
            Expanded(
              child: Container(
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
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            Container(
              height: 71.h,
              width: 14.w,
              decoration: BoxDecoration(color: Color(0xFFE22635),borderRadius: BorderRadius.circular(20) ),

            ),
            SizedBox(width: 10.w,),
            Expanded(
              child: Container(
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
                  onTap: () { Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerBookedDetailView())); Navigator.pushNamed(context, '/detail');
                  },
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            Container(
              height: 71.h,
              width: 14.w,
              decoration: BoxDecoration(color: Color(0xFFF4CF3A),borderRadius: BorderRadius.circular(20) ),

            ),
            SizedBox(width: 10.w,),
            Expanded(
              child: Container(
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
                        'Hold',
                        style:
                        TextStyle(fontSize: 17.sp,color: Colors.white),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>CustomerHoldDetailView()));
                  },
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            Container(
              height: 71.h,
              width: 14.w,
              decoration: BoxDecoration(color: Color(0xFFE22635),borderRadius: BorderRadius.circular(20) ),

            ),
            SizedBox(width: 10.w,),
            Expanded(
              child: Container(
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
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            Container(
              height: 71.h,
              width: 14.w,
              decoration: BoxDecoration(color: Color(0xFFF4CF3A),borderRadius: BorderRadius.circular(20) ),

            ),
            SizedBox(width: 10.w,),
            Expanded(
              child: Container(
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
                        'Hold',
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
            ),
          ],
        ),
      ]),
    );
  }
}

/*
Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(3, 10),
                )
              ],
            ),
            child: ListTile(
              title:  Row(
                children: [
                  Text('Customer Name',style: TextStyle(fontSize: 19.5.sp),),
                  Spacer(),
                  Text('03-01-2022',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                ],
              ),
              subtitle:  Row(
                children: [
                  Text('Selected Event',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                  Spacer(),
                  Text('Booked',style: TextStyle(fontSize: 19.5.sp,fontWeight: FontWeight.bold),),
                ],
              ),

              onTap: () {

                Navigator.pushNamed(context, '/detail');
              },

            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(3, 10),
                )
              ],
            ),
            child: ListTile(
              title:  Row(
                children: [
                  Text('Customer Name',style: TextStyle(fontSize: 19.5.sp),),
                  Spacer(),
                  Text('05-01-2022',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                ],
              ),
              subtitle:  Row(
                children: [
                  Text('Selected Event',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                  Spacer(),
                  Text('Hold',style: TextStyle(fontSize: 19.5.sp,fontWeight: FontWeight.bold),),
                ],
              ),

              onTap: () {
                Navigator.pushNamed(context, '/detail');
              },

            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(3, 10),
                )
              ],
            ),
            child: ListTile(
              title:  Row(
                children: [
                  Text('Customer Name',style: TextStyle(fontSize: 19.5.sp),),
                  Spacer(),
                  Text('08-01-2022',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                ],
              ),
              subtitle:  Row(
                children: [
                  Text('Selected Event',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                  Spacer(),
                  Text('Booked',style: TextStyle(fontSize: 19.5.sp,fontWeight: FontWeight.bold),),
                ],
              ),

              onTap: () {
                Navigator.pushNamed(context, '/detail');
              },

            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  spreadRadius: 1,
                  offset: Offset(3, 10),
                )
              ],
            ),
            child: ListTile(
              title:  Row(
                children: [
                  Text('Customer Name',style: TextStyle(fontSize: 19.5.sp),),
                  Spacer(),
                  Text('15-01-2022',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                ],
              ),
              subtitle:  Row(
                children: [
                  Text('Selected Event',style: TextStyle(color:const Color(0xFFC4996C),fontSize: 16..sp),),
                  Spacer(),
                  Text('Hold',style: TextStyle(fontSize: 19.5.sp,fontWeight: FontWeight.bold),),
                ],
              ),

              onTap: () {
                Navigator.pushNamed(context, '/detail');
              },

            ),
          ),
* */
