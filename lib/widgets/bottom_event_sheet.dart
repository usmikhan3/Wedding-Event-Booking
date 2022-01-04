import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signature_event_booking/models/event_data_source.dart';
import 'package:signature_event_booking/provider/provider.dart';
import 'package:signature_event_booking/views/details/customer_detail_view.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TasksWidget extends StatefulWidget {
const TasksWidget({
Key? key,
}) : super(key: key);

@override
_TasksWidgetState createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EventProvider>(context);
    final selectedEvents = provider.eventsOfSelectedDate;
    if (selectedEvents.isEmpty) {
      return const Center(
        child: Text(
          "No Events found!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      );
    }

    return SfCalendar(
      view: CalendarView.schedule,
      dataSource: EventDataSource(provider.events),
      initialDisplayDate: provider.selectedDate,
      appointmentBuilder: appointmentBuilder,
      headerHeight: 0,
      todayHighlightColor: Colors.black,
      selectionDecoration: BoxDecoration(
        color: Colors.red,
      ),
      onTap: (details) {
        if (details.appointments == null) return;

        final event = details.appointments!.first;

       // Navigator.pushNamed(context, '/detail',arguments: {event:event});

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => CustomerDetailView(event: event),
          ),
        );
      },
    );
  }

  Widget appointmentBuilder(
      BuildContext context,
      CalendarAppointmentDetails details,
      ) {
    final event = details.appointments.first;

    return Container(
      width: details.bounds.width,
      height: details.bounds.height,
      decoration: BoxDecoration(
        color: event.backgroundColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          event.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
