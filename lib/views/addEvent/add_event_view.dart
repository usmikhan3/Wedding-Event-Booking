import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:provider/provider.dart';
import 'package:signature_event_booking/constants/constants.dart';
import 'package:signature_event_booking/models/event_model.dart';
import 'package:signature_event_booking/provider/provider.dart';
import 'package:signature_event_booking/utils/utils.dart';
import 'package:signature_event_booking/widgets/custom_event_fields.dart';
import 'package:signature_event_booking/widgets/custom_toggle_field.dart';
import 'package:signature_event_booking/widgets/cutom_button.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AddEventDetailsView extends StatefulWidget {
  final Event? event;

  const AddEventDetailsView({Key? key,this.event}) : super(key: key);

  @override
  _AddEventDetailsViewState createState() => _AddEventDetailsViewState();
}

class _AddEventDetailsViewState extends State<AddEventDetailsView> {
  final _formKey = GlobalKey<FormState>();
  var _ownerNameController = TextEditingController(text: "Salman");
  var _phoneController = TextEditingController();
  var _nameController = TextEditingController();
  var _gatheringController = TextEditingController();
  var _eventTitleController = TextEditingController();
  var _advanceController = TextEditingController();
  var _remainingController = TextEditingController();
  var _descriptionController = TextEditingController();
  bool _deco = false;
  bool _status = false;

  late DateTime fromDate;
  late DateTime todate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // if (widget.event == null) {
    //   fromDate = DateTime.now();
    //   todate = DateTime.now().add(
    //     Duration(hours: 2),
    //   );
    // } else {
    //   final event = widget.event!;
    //   titleController.text = event.title;
    //   fromDate = event.from;
    //   //todate = event.to;
    // }
    fromDate = DateTime.now();
    todate = DateTime.now().add(
      Duration(hours: 2),
    );
  }
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
        title: Text("Add Customer Details",style: TextStyle(color: kThemeColor,fontSize: 19.5.sp,fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: GlassmorphicContainer(
          height:  MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20.w,),
          borderRadius: 20,
          blur: 20,
          alignment: Alignment.bottomCenter,
          border: 2,
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
          child:  SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomEventField(
                      controller: _ownerNameController,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: 'Owner name',
                      labelText: 'Owner Name',
                      fieldName: "Owner Name",
                      onSubmitted: saveForm,
                    ),
                    CustomEventField(
                      controller: _nameController,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      labelText: 'Customer Name',
                      hintText: 'Add Customer Name',
                      fieldName: "Customer Name",
                      onSubmitted: saveForm,
                    ),
                    CustomEventField(
                      controller: _phoneController,
                      textInputType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      labelText: 'Phone Number',
                      hintText: 'Add Phone Number',
                      fieldName: "Phone number",
                      onSubmitted: saveForm,
                    ),  CustomEventField(
                      controller: _eventTitleController,
                      textInputType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      labelText: 'Event Name',
                      hintText: 'Add Event Name',
                      fieldName: "Event Title",
                      onSubmitted: saveForm,
                    ),
                    CustomEventField(
                      controller: _gatheringController,
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      labelText: 'Number of Gathering',
                      hintText: 'Add Number Of gathering',
                      fieldName: "Gathering",
                      onSubmitted: saveForm,
                    ),
                    CustomToggleField(heading: "Decoration Service",  child: ToggleSwitch(
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      fontSize: 18.sp,
                      iconSize: 25.h,
                      activeFgColor: Colors.white,
                      activeBgColor: [kThemeColor],
                      inactiveBgColor:Color(0xFF31261B),
                      inactiveFgColor: Colors.white,
                      //icons: [Icons.done,Icons.clear],
                      labels: ["YES","NO"],
                      onToggle: (index){
                        print('switched to: $index');
                        index == 0 ? _deco = true : _deco = false;
                      },
                    ),),
                    SizedBox(height: 25.h,),

                    CustomEventField(
                      controller: _advanceController,
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      labelText: 'Advance Payment',
                      hintText: 'Add Advance Payment',
                      fieldName: "Advance",
                      onSubmitted: saveForm,
                    ),
                    CustomEventField(
                      controller: _remainingController,
                      textInputType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      labelText: 'Remaining Payment',
                      hintText: 'Add Remaining Payment',
                      fieldName: "Remailing Payment",
                      onSubmitted: saveForm,
                    ),


                    buildDateTimePickers(),
                    Divider(
                      color: Colors.black38,
                      thickness: 1.h,
                    ),
                    SizedBox(height: 25.h,),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "SELECT STATUS",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ToggleSwitch(
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          fontSize: 16.sp,
                          iconSize: 25.h,
                          minWidth: 100,
                          activeFgColor: Colors.white,
                          activeBgColor: [kThemeColor],
                          inactiveBgColor:Color(0xFF31261B),
                          inactiveFgColor: Colors.white,
                          //icons: [Icons.done,Icons.clear],
                          labels: ["HOLD","BOOKED"],
                          onToggle: (index){
                            print('switched to: $index');
                            index == 0 ? _status = true : _status = false;
                          },
                        ),

                        // CustomToggleField(heading: "Booked",  child: ToggleSwitch(
                        //   initialLabelIndex: 1,
                        //   totalSwitches: 2,
                        //   fontSize: 18.sp,
                        //   iconSize: 25.h,
                        //   activeFgColor: Colors.white,
                        //   activeBgColor: [kThemeColor],
                        //   inactiveBgColor:Color(0xFF31261B),
                        //   inactiveFgColor: Colors.white,
                        //   //icons: [Icons.done,Icons.clear],
                        //   labels: ["YES","NO"],
                        //   onToggle: (index){
                        //     print('switched to: $index');
                        //     index == 0 ? _booked = true : _booked = false;
                        //   },
                        // )
                        //   ,),
                      ],
                    ),
                    SizedBox(height: 15.h,),
                    Divider(
                      color: Colors.black38,
                      thickness: 1.h,
                    ),
                    SizedBox(height: 20.h,),
                    CustomEventField(
                      controller: _descriptionController,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      labelText: 'Description',
                      hintText: 'Add Description',
                      fieldName: "Description",
                      onSubmitted: saveForm,
                    ),
                    SizedBox(width: 388.w,child: CustomButton(text: "Confirm Now",  onPress: saveForm,))
                  ],

                ),

              ),
            ),
          ),
        ),
      )





    );
  }


  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(fromDate, pickDate: pickDate);
    if (date == null) return;

    if (date.isAfter(todate)) {
      todate =
          DateTime(date.year, date.month, date.day, todate.hour, todate.minute);
    }
    setState(() {
      fromDate = date;
    });
  }

  Future<DateTime?> pickDateTime(
      DateTime initialDate, {
        required bool pickDate,
        DateTime? firstDate,
      }) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate ?? DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (date == null) return null;
      final time =
      Duration(hours: initialDate.hour, minutes: initialDate.minute);

      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );
      if (timeOfDay == null) return null;
      final date =
      DateTime(initialDate.year, initialDate.month, initialDate.day);
      final time = Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);

      return date.add(time);
    }
  }

  Widget buildFrom() => buildHeader(
    header: 'SELECT DATE',
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: buildDropDownField(
            text: Utils.toDate(fromDate),
            onClicked: () => pickFromDateTime(pickDate: true),
          ),
        ),
        Expanded(
          child: buildDropDownField(

            text: Utils.toTime(fromDate),
            onClicked: () => pickFromDateTime(pickDate: false),
          ),
        )
      ],
    ),
  );

  Widget buildHeader({
    required String header,
    required Widget child,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          child,
        ],
      );


  Widget buildDropDownField(
      {required String text, required VoidCallback onClicked}) =>
      ListTile(
        onTap: onClicked,
        title: FittedBox(child: Text(text,style: TextStyle(color: Colors.white),)),
        trailing: const Icon(
          Icons.arrow_drop_down,
        ),
      );


  Widget buildDateTimePickers() => Column(
    children: [
      buildFrom(),
      //buildTo(),
    ],
  );


  Future saveForm() async {

     final isValid = _formKey.currentState!.validate();
    if (isValid) {
      final event = Event(
        backgroundColor: _status  ? Color(0xFFF4CF3A) : Colors.green,
        status: _status,
        to:fromDate.add(const Duration(hours: 2)),
        advance: _advanceController.text,
        customerName: _nameController.text,
        customerPhoneNo: _phoneController.text,
        title: _eventTitleController.text,
        description: _descriptionController.text,
        decoration: _deco,
        gathering: _gatheringController.text,
        ownerName: _ownerNameController.text,
        remainingPayment: _remainingController.text,
        from: fromDate,


      );

      final isEditing = widget.event != null;
      final provider = Provider.of<EventProvider>(context, listen: false);

      if (isEditing) {
        provider.editEvent(event, widget.event!);
        Navigator.pop(context);
      } else {
        provider.addEvent(event);
      }
      Navigator.pop(context);
    }
  }

}
