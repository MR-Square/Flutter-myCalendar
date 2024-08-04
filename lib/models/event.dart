import 'package:flutter/material.dart';

class Event {
  const Event({
    required this.eventName,
    required this.from,
    required this.to,
    required this.background,
    required this.isAllDay,
  });
  final String eventName;
  final DateTime to;
  final DateTime from;
  final Color background;
  final bool isAllDay;
}
