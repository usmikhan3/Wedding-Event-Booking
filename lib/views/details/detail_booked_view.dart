import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/models/event_model.dart';
import 'package:signature_event_booking/utils/utils.dart';

class CustomerBookedDetailView extends StatefulWidget {
  final Event? event;
  const CustomerBookedDetailView({Key? key, this.event}) : super(key: key);

  @override
  _CustomerBookedDetailViewState createState() => _CustomerBookedDetailViewState();
}

class _CustomerBookedDetailViewState extends State<CustomerBookedDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Container(

            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
                color: kThemeColor, borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // ListView.separated(
                //   physics: NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: detailList.length,
                //   itemBuilder: (_, index) {
                //     return detailList[index];
                //   },
                //   separatorBuilder: (_,index)=>Divider(thickness: 1.5.h,color: kThemeColor,),
                // ),
                //TODO PARTNER
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Partner: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                       "Salman",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor,),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                //TODO CUSTOMER NAME
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Customer Name: ",
                      style: TextStyle(
                          color:  Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                       "Usman",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                //TODO CUSTOMER PHONE
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Customer Phone Number: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                        "03092023003",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),


                //TODO EVENT
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Event: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                        "Walima",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),


                //TODO GATHERING
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Gathering: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                        "1000",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),


                //TODO Decoration Service
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Decoration Service: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                       "YES",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                //TODO ADVANCE
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Advance Payment: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                       "10000",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                //TODO REMAINING
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Remaining Payment: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                       "80000",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                //TODO EVENT DATE
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Event Date: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                       "20-05-2022"
                        ,
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                //TODO STATUS
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "STATUS: ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.75.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Flexible(
                      child: Text(
                        "BOOKED",
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,color: kAccentColor),textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
                Divider(thickness: 1.5.h,color: kAccentColor,),

                SizedBox(height: 20,),




                Text(
                  "Description: ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.75.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),
                Text(
                  "Dummy text",
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300,color: kAccentColor),textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDetailTile extends StatelessWidget {
  final String label;
  final String value;
  const CustomDetailTile({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              "$label: ",
              style: TextStyle(
                  color: kThemeColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700),
            ),
            Flexible(
              child: Text(
                value,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700,),textAlign: TextAlign.left,
              ),
            ),

          ],
        ),

      ],
    );
  }


}
final detailList = [
  CustomDetailTile(
    label: "Partner",
    value: "Salman",
  ),
  CustomDetailTile(
    label: "Customer Name",
    value: "Usman Khan",
  ),
  CustomDetailTile(
    label: "Customer Phone Number",
    value: "0333-6456553",
  ),
  CustomDetailTile(
    label: "Event",
    value: "Mhendi / Mayoo",
  ),
  CustomDetailTile(
    label: "People Gathering",
    value: "100000",
  ),
  CustomDetailTile(
    label: "Decoration Service",
    value: "No",
  ),
  CustomDetailTile(
    label: "Advance Payment",
    value: "50,000",
  ),

  CustomDetailTile(
    label: "Event Date",
    value: "03-Jan-2022",
  ),
  CustomDetailTile(
    label: "Event Time",
    value: "08 : 00 PM",
  ),
  CustomDetailTile(
    label: "Booking Status",
    value: "Booked",
  ),

];

