import 'package:flutter/material.dart';

class Event {
  final String ownerName;
  final String title;
  final String customerName;
  final String customerPhoneNo;
  final String description;
  final String advance;
  final String remainingPayment;
  final String gathering;
  final bool decoration;
  final bool status;

  final Color backgroundColor;
  final DateTime from;

  Event({
    required this.title,
    required this.customerName,
    required this.customerPhoneNo,
    required  this.description,
    required  this.advance,
    required  this.remainingPayment,
    required this.gathering,
    required  this.decoration,
    required  this.status,

    required this.backgroundColor,
    required this.from,
    required this.ownerName,
  });

  String toString() => this.title;
}
