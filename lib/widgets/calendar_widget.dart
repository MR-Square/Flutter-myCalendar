import 'package:flutter/material.dart';
import 'package:mycalendar/utils/data/event_data_source.dart';
import 'package:mycalendar/models/event.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
    required this.eventsList,
  });

  final List<Event> eventsList;

  @override
  State createState() {
    return _CalendarWidgetState();
  }
}

class _CalendarWidgetState extends State<CalendarWidget> {
  List<Event> _getDataSource() {
    final List<Event> events = widget.eventsList;
    return events;
  }

  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      initialDisplayDate: DateTime.now(), // create rectange border.
      view: CalendarView.month, // default view
      // allowViewNavigation: true, // change view on tap on a date
      allowedViews: const [
        // allowed views
        CalendarView.day,
        CalendarView.week,
        CalendarView.month,
      ],
      dataSource: EventDataSource(_getDataSource()),
      initialSelectedDate: DateTime.now(),
      minDate: DateTime(DateTime.now().year - 1), // starting date of calendar
      maxDate: DateTime(DateTime.now().year + 1), // ending date of calendar
      showTodayButton: true, // help to jump on today date
      showNavigationArrow: true, // help to navigate previous/next view
      firstDayOfWeek: 1, // help to set starting day of week
      todayHighlightColor: Colors.blue[300], // highligt current date
      showDatePickerButton: true,
      showCurrentTimeIndicator: true,
      monthViewSettings: const MonthViewSettings(
        appointmentDisplayCount: 3,
        appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
        showAgenda: true,
      ),
      selectionDecoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          // color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(4),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
