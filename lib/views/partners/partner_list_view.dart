import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:signature_event_booking/constants/constants.dart';
class PartnerListView extends StatefulWidget {
  const PartnerListView({Key? key}) : super(key: key);

  @override
  _PartnerListViewState createState() => _PartnerListViewState();
}

class _PartnerListViewState extends State<PartnerListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      title: Text("List Of Partners",style: TextStyle(color: kThemeColor,fontSize: 19.5.sp,fontWeight: FontWeight.bold,),),
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
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h,),
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kAccentColor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: ListTile(
                    leading:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/profile.png")) ,
                    title: Row(
                      children: [
                        Text(
                          'Partner Name',
                          style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '0333-58747478',
                          style: TextStyle(
                              color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'partnermail123@gmail.com',
                          style: TextStyle(
                              color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '1',
                          style:
                          TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {

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
                    leading:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/profile.png")) ,
                    title: Row(
                      children: [
                        Text(
                          'Partner Name',
                          style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '0333-58747478',
                          style: TextStyle(
                              color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'partnermail123@gmail.com',
                          style: TextStyle(
                              color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '2',
                          style:
                          TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {

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
                    leading:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/profile.png")) ,
                    title: Row(
                      children: [
                        Text(
                          'Partner Name',
                          style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '0333-58747478',
                          style: TextStyle(
                              color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'partnermail123@gmail.com',
                          style: TextStyle(
                              color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '3',
                          style:
                          TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {

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
                    leading:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/profile.png")) ,
                    title: Row(
                      children: [
                        Text(
                          'Partner Name',
                          style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '0333-58747478',
                          style: TextStyle(
                              color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'partnermail123@gmail.com',
                          style: TextStyle(
                              color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '4',
                          style:
                          TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {

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
                    leading:ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset("assets/images/profile.png")) ,
                    title: Row(
                      children: [
                        Text(
                          'Partner Name',
                          style: TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '0333-58747478',
                          style: TextStyle(
                              color: kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          'partnermail123@gmail.com',
                          style: TextStyle(
                              color:kThemeColor, fontSize: 14.sp,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '5',
                          style:
                          TextStyle(fontSize: 17.sp,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {

                    },
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
