import 'package:flutter/material.dart';
import 'package:signature_event_booking/constants/constants.dart';

class CustomConfirmDetailRow extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  CustomConfirmDetailRow({

    required  this.controller,
    required this.label,
  });



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$label: ",style: TextStyle(fontWeight: FontWeight.bold),),
            Text(controller.text),

          ],
        ),
        Divider(color: kThemeColor,thickness: 1.5,),
      ],
    );
  }
}