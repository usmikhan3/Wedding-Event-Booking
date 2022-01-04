import 'package:flutter/material.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/views/calendar/all_dates_view.dart';
import 'package:signature_event_booking/views/customers/hold.dart';
import 'package:signature_event_booking/views/customers/booked.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: kAccentColor,
            child: Column(

              children: [
                  SizedBox(height: 250.h,),
                ListTile(
                  title: const Text('List of Customers'),
                  leading: Image.asset("assets/images/person.png"),
                  onTap: () {

                    Navigator.pushNamed(context, '/customer');
                  },
                  trailing: Icon(Icons.arrow_forward_ios,size: 20.h,),
                ),ListTile(
                  title: const Text('List of Partners'),
                  leading: Image.asset("assets/images/partners.png"),
                  onTap: () {

                    Navigator.pushNamed(context, '/partner');
                  },
                  trailing: Icon(Icons.arrow_forward_ios,size: 20.h,),
                ),ListTile(
                  title: const Text('Exit App'),
                  leading: Image.asset("assets/images/exit.png"),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                  trailing: Icon(Icons.arrow_forward_ios,size: 20.h,),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,

          bottom:const TabBar(

            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            tabs: [
              Tab(child: Text("ALL EVENTS"),),
              Tab(child: Text("HOLD"),),
              Tab(child: Text("BOOKED"),),
            ],
          ),
        ),
        body:const TabBarView(
          children:  [

            HoldCustomerView(),
            BookedCustomerView(),
            AllDatesView(),
          ],
        ),
      ),
    );
  }
}
