// Material app
import 'package:first_app/View/area_circle.dart';
import 'package:first_app/View/dashboard_task.dart';
import 'package:first_app/View/first_view.dart';
import 'package:first_app/View/pallindrome.dart';
import 'package:first_app/View/simple_interest.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Dashboard());
  }
}