import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'event_model.dart';

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Event> appointments) {
    this.appointments = appointments;
  }

  Event getEvent(int index) => appointments![index] as Event;

  @override
  DateTime getStartTime(int index) => getEvent(index).from;

  // @override
  // DateTime getEndTime(int index) => getEvent(index).to;

  @override
  String getSubject(int index) => getEvent(index).title;

  @override
  String getDescription(int index) => getEvent(index).description;

  @override
  String getCustomerPhoneNo(int index) => getEvent(index).customerPhoneNo;

  @override
  String getCustomerName(int index) => getEvent(index).customerName;

  @override
  Color getColor(int index) => getEvent(index).backgroundColor;

  @override
  String getOwnerName(int index) => getEvent(index).ownerName;

  @override
  String getAdvance(int index) => getEvent(index).advance;

  @override
  String getGathering(int index) => getEvent(index).gathering;

  @override
  String getRemaining(int index) => getEvent(index).remainingPayment;

  @override
  bool getDecoration(int index) => getEvent(index).decoration;

  @override
  bool getHold(int index) => getEvent(index).decoration;

  @override
  bool getBooked(int index) => getEvent(index).decoration;





}