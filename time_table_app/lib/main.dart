import 'package:flutter/material.dart';
import 'package:time_table_app/Pages/HomePage.dart';

void main() {
  runApp(const TimeTable());
}

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
