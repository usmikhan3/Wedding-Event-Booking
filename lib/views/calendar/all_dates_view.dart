import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/models/event_data_source.dart';
import 'package:signature_event_booking/models/event_model.dart';
import 'package:signature_event_booking/provider/provider.dart';
import 'package:signature_event_booking/views/addEvent/add_event_view.dart';
import 'package:signature_event_booking/widgets/bottom_event_sheet.dart';
import 'package:signature_event_booking/widgets/custom_button2.dart';
import 'package:signature_event_booking/widgets/cutom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class AllDatesView extends StatefulWidget {
  const AllDatesView({Key? key}) : super(key: key);

  @override
  _AllDatesViewState createState() => _AllDatesViewState();
}

class _AllDatesViewState extends State<AllDatesView> {
  Map<DateTime, List<Event>>? _selectedEvents;
  CalendarFormat _format = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _foocusedDay = DateTime.now();

  final _eventController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedEvents = {};
  }

  List<Event> _getEventsFromDay(DateTime date) {
    return _selectedEvents![date] ?? [];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _eventController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // SfCalendar(
              //
              //   monthViewSettings: MonthViewSettings(
              //
              //       dayFormat: 'EEE',
              //    // agendaViewHeight: 100,
              //     agendaItemHeight: 70,
              //
              //     //showAgenda: true,
              //     //agendaViewHeight: 70,
              //       agendaViewHeight: 10,
              //     agendaStyle: AgendaStyle(backgroundColor: kAccentColor),
              //     appointmentDisplayMode: MonthAppointmentDisplayMode.appointment
              //
              //
              //   ),
              //   view: CalendarView.month,
              //   initialSelectedDate: DateTime.now(),
              //   cellBorderColor: Colors.transparent,
              //   //allowAppointmentResize: true,
              //   appointmentTextStyle: TextStyle(fontSize: 12.sp,color: kThemeColor,
              //       letterSpacing: 5,
              //       fontWeight: FontWeight.bold,
              //       fontStyle: FontStyle.italic),
              //   scheduleViewSettings: ScheduleViewSettings(
              //    // appointmentItemHeight: 80.h,
              //     hideEmptyScheduleWeek: true,
              //   ),
              //
              //   dataSource: EventDataSource(events),
              //   onLongPress: (details) {
              //     final provider = Provider.of<EventProvider>(context, listen: false);
              //     provider.setDate(details.date!);
              //     showModalBottomSheet(
              //       context: context,
              //       builder: (context) => TasksWidget(),
              //     );
              //   },
              // ),
              SizedBox(
                height: 480.h,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: SfCalendar(
                    viewHeaderStyle: ViewHeaderStyle(
                        dateTextStyle: TextStyle(color: Colors.white),
                        dayTextStyle: TextStyle(color: Colors.white)),
                    blackoutDatesTextStyle: TextStyle(color: Colors.black),
                    todayTextStyle: TextStyle(color: Colors.black),
                    
                    cellBorderColor: Colors.transparent,
                    view: CalendarView.month,
                    initialSelectedDate: DateTime.now(),
                    monthViewSettings: MonthViewSettings(
                      dayFormat: 'EEE',
                      agendaViewHeight: 100.h,
                      agendaItemHeight: 70.h,
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.indicator,
                      showAgenda: true,
                    ),
                    showCurrentTimeIndicator: false,

                    weekNumberStyle: WeekNumberStyle(
                        textStyle: TextStyle(color: Colors.white)),
                    headerStyle: CalendarHeaderStyle(
                        textStyle: TextStyle(color: Colors.white)),
                    todayHighlightColor: Colors.white,
                    selectionDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 2)),
                    dataSource: EventDataSource(events),
                    onLongPress: (details) {
                      final provider =
                          Provider.of<EventProvider>(context, listen: false);
                      provider.setDate(details.date!);
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => TasksWidget(),
                      );
                    },
                    allowAppointmentResize: true,
                    appointmentTextStyle: TextStyle(
                        fontSize: 12.sp,
                        color: kThemeColor,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              // SizedBox(height: 20.h,),
              //
              // Align(alignment: Alignment.centerLeft,child: Text("EVENT STATUS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: Color(0xFFBFBFBF),),),),
              // SizedBox(height: 20.h,),
              // Row(
              //   children: [
              //
              //     //TODO: BOOKED STATUS
              //     Container(
              //       height: 10.h,
              //       width: 10.w,
              //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color:  Color(0xFFE22635),),
              //     ),
              //     SizedBox(width: 20.w,),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(" BOOKED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp,),),
              //         Container(
              //           height: 10.56.h,
              //           width: 59.56.w,
              //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color: Color(0xFFE22635),),
              //         ),
              //       ],
              //     ),
              //     SizedBox(width: 20.w,),
              //     //TODO: HOLD STATUS
              //     Container(
              //       height: 10.h,
              //       width: 10.w,
              //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color:  Color(0xFFF4CF3A),),
              //     ),
              //     SizedBox(width: 20.w,),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(" HOLD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp,),),
              //         Container(
              //           height: 10.56.h,
              //           width: 59.56.w,
              //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color: Color(0xFFF4CF3A),),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
            ],
          ),

          // Column(
          //   children: [
          //     TableCalendar(
          //       focusedDay: _foocusedDay,
          //       firstDay: DateTime(2004),
          //       lastDay: DateTime(2100),
          //       calendarFormat: _format,
          //       onFormatChanged: (CalendarFormat format) {
          //         setState(() {
          //           _format = format;
          //         });
          //       },
          //       eventLoader: _getEventsFromDay,
          //       startingDayOfWeek: StartingDayOfWeek.monday,
          //       onDaySelected: (DateTime selectDay, DateTime focusedDay) {
          //         setState(() {
          //           _selectedDay = selectDay;
          //           _foocusedDay = focusedDay;
          //         });
          //       },
          //       calendarStyle: const CalendarStyle(
          //         isTodayHighlighted: true,
          //         selectedDecoration:
          //             BoxDecoration(color: , shape: BoxShape.circle)
          //       ),
          //       selectedDayPredicate: (DateTime date) {
          //         return isSameDay(_selectedDay, date);
          //       },
          //       headerStyle: const HeaderStyle(
          //           titleCentered: true,
          //           formatButtonVisible: true,
          //           formatButtonShowsNext: false),
          //     ),
          //     ..._getEventsFromDay(_selectedDay).map((Event event) =>ListTile(
          //       title: Text(event.title),
          //     ) )
          //   ],
          // ),

          SizedBox(
              width: 388.w,
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddEventDetailsView(),
                  ),
                ),
                child: Container(
                  height: 69.h,
                  //width: 330.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:  Color(0xFFffcf40),
                      border: Border.all(color: kAccentColor)),
                  child: Center(
                    child: Text(
                      "Schedule Now",
                      style: TextStyle(
                          color: kThemeColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )

              // CustomButton2(
              //     text: "Schedule Now",
              //     onPress: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (_) => AddEventDetailsView(),
              //         ),
              //       );
              //       //  showDialog(
              //       //    context: context,
              //       //    builder: (context) => AlertDialog(
              //       //      title: Text("Add Event"),
              //       //      content: TextFormField(
              //       //        controller: _eventController,
              //       //      ),
              //       //      actions: [
              //       //        TextButton(
              //       //          child: Text("Cancel"),
              //       //          onPressed: () => Navigator.pop(context),
              //       //        ),
              //       //        TextButton(
              //       //          child: Text("Ok"),
              //       //          onPressed: () {
              //       //            if (_eventController.text.isEmpty) {
              //       //
              //       //            } else {
              //       //              if (_selectedEvents![_selectedDay] != null) {
              //       //                _selectedEvents![_selectedDay]!.add(
              //       //                  Event(title: _eventController.text),
              //       //                );
              //       //              } else {
              //       //                _selectedEvents![_selectedDay] = [
              //       //                  Event(title: _eventController.text)
              //       //                ];
              //       //              }
              //       //
              //       //            }
              //       //            Navigator.pop(context);
              //       //            _eventController.clear();
              //       //            setState((){});
              //       //            return;
              //       //          },
              //       //        ),
              //       //      ],
              //       //    ),
              //       //  );
              //     }),
              ),
        ],
      ),
    );
  }
}

/*

 Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // SfCalendar(
              //
              //   monthViewSettings: MonthViewSettings(
              //
              //       dayFormat: 'EEE',
              //    // agendaViewHeight: 100,
              //     agendaItemHeight: 70,
              //
              //     //showAgenda: true,
              //     //agendaViewHeight: 70,
              //       agendaViewHeight: 10,
              //     agendaStyle: AgendaStyle(backgroundColor: kAccentColor),
              //     appointmentDisplayMode: MonthAppointmentDisplayMode.appointment
              //
              //
              //   ),
              //   view: CalendarView.month,
              //   initialSelectedDate: DateTime.now(),
              //   cellBorderColor: Colors.transparent,
              //   //allowAppointmentResize: true,
              //   appointmentTextStyle: TextStyle(fontSize: 12.sp,color: kThemeColor,
              //       letterSpacing: 5,
              //       fontWeight: FontWeight.bold,
              //       fontStyle: FontStyle.italic),
              //   scheduleViewSettings: ScheduleViewSettings(
              //    // appointmentItemHeight: 80.h,
              //     hideEmptyScheduleWeek: true,
              //   ),
              //
              //   dataSource: EventDataSource(events),
              //   onLongPress: (details) {
              //     final provider = Provider.of<EventProvider>(context, listen: false);
              //     provider.setDate(details.date!);
              //     showModalBottomSheet(
              //       context: context,
              //       builder: (context) => TasksWidget(),
              //     );
              //   },
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,

                child: SfCalendar(
                  cellBorderColor: Colors.transparent,
                  view: CalendarView.month,
                  initialSelectedDate: DateTime.now(),
                  monthViewSettings: MonthViewSettings(
                    dayFormat: 'EEE',
                    agendaViewHeight: 100.h,
                    agendaItemHeight: 70.h,
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.indicator,
                    showAgenda: true,


                  ),
                  timeSlotViewSettings: TimeSlotViewSettings(
                    endHour: 16,
                  ),
                  showCurrentTimeIndicator: false,
                  selectionDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.red,width: 2)
                  ),
                  dataSource: EventDataSource(events),
                  onLongPress: (details) {
                    final provider =
                        Provider.of<EventProvider>(context, listen: false);
                    provider.setDate(details.date!);
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => TasksWidget(),
                    );
                  },
                    allowAppointmentResize: true,
                    appointmentTextStyle: TextStyle(fontSize: 12.sp,color: kThemeColor,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                ),
              ),
              // SizedBox(height: 20.h,),
              //
              // Align(alignment: Alignment.centerLeft,child: Text("EVENT STATUS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: Color(0xFFBFBFBF),),),),
              // SizedBox(height: 20.h,),
              // Row(
              //   children: [
              //
              //     //TODO: BOOKED STATUS
              //     Container(
              //       height: 10.h,
              //       width: 10.w,
              //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color:  Color(0xFFE22635),),
              //     ),
              //     SizedBox(width: 20.w,),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(" BOOKED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp,),),
              //         Container(
              //           height: 10.56.h,
              //           width: 59.56.w,
              //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color: Color(0xFFE22635),),
              //         ),
              //       ],
              //     ),
              //     SizedBox(width: 20.w,),
              //     //TODO: HOLD STATUS
              //     Container(
              //       height: 10.h,
              //       width: 10.w,
              //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color:  Color(0xFFF4CF3A),),
              //     ),
              //     SizedBox(width: 20.w,),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(" HOLD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp,),),
              //         Container(
              //           height: 10.56.h,
              //           width: 59.56.w,
              //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r),color: Color(0xFFF4CF3A),),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
            ],
          ),

          // Column(
          //   children: [
          //     TableCalendar(
          //       focusedDay: _foocusedDay,
          //       firstDay: DateTime(2004),
          //       lastDay: DateTime(2100),
          //       calendarFormat: _format,
          //       onFormatChanged: (CalendarFormat format) {
          //         setState(() {
          //           _format = format;
          //         });
          //       },
          //       eventLoader: _getEventsFromDay,
          //       startingDayOfWeek: StartingDayOfWeek.monday,
          //       onDaySelected: (DateTime selectDay, DateTime focusedDay) {
          //         setState(() {
          //           _selectedDay = selectDay;
          //           _foocusedDay = focusedDay;
          //         });
          //       },
          //       calendarStyle: const CalendarStyle(
          //         isTodayHighlighted: true,
          //         selectedDecoration:
          //             BoxDecoration(color: , shape: BoxShape.circle)
          //       ),
          //       selectedDayPredicate: (DateTime date) {
          //         return isSameDay(_selectedDay, date);
          //       },
          //       headerStyle: const HeaderStyle(
          //           titleCentered: true,
          //           formatButtonVisible: true,
          //           formatButtonShowsNext: false),
          //     ),
          //     ..._getEventsFromDay(_selectedDay).map((Event event) =>ListTile(
          //       title: Text(event.title),
          //     ) )
          //   ],
          // ),

          SizedBox(
            width: 388.w,
            child: CustomButton2(
                text: "Schedule Now",
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AddEventDetailsView(),
                    ),
                  );
                  //  showDialog(
                  //    context: context,
                  //    builder: (context) => AlertDialog(
                  //      title: Text("Add Event"),
                  //      content: TextFormField(
                  //        controller: _eventController,
                  //      ),
                  //      actions: [
                  //        TextButton(
                  //          child: Text("Cancel"),
                  //          onPressed: () => Navigator.pop(context),
                  //        ),
                  //        TextButton(
                  //          child: Text("Ok"),
                  //          onPressed: () {
                  //            if (_eventController.text.isEmpty) {
                  //
                  //            } else {
                  //              if (_selectedEvents![_selectedDay] != null) {
                  //                _selectedEvents![_selectedDay]!.add(
                  //                  Event(title: _eventController.text),
                  //                );
                  //              } else {
                  //                _selectedEvents![_selectedDay] = [
                  //                  Event(title: _eventController.text)
                  //                ];
                  //              }
                  //
                  //            }
                  //            Navigator.pop(context);
                  //            _eventController.clear();
                  //            setState((){});
                  //            return;
                  //          },
                  //        ),
                  //      ],
                  //    ),
                  //  );
                }),
          ),
        ],
      ),
    )


 */
