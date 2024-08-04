import 'package:flutter/material.dart';
import 'package:mycalendar/widgets/calendar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("myCalendar"),
      ),
      body: const CalendarWidget(),
    );
  }
}
