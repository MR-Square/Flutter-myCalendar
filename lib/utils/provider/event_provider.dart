import 'package:flutter/material.dart';
import 'package:mycalendar/models/event.dart';

class EventProvider extends ChangeNotifier {
  DateTime today = DateTime.now();
  List<Event> events = <Event>[
    Event(
      eventName: 'Testing',
      from: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 9, 0, 0),
      to: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 11, 0, 0),
      background: Colors.blue,
      isAllDay: false,
    ),
  ];

  void addEvent() {
    // events.add(Event());
    notifyListeners();
  }
}
