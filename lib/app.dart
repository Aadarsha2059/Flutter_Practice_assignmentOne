// Material app
import 'package:first_app/view/dashboard_task.dart';
import 'package:first_app/view/ui_task.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: UiTask());
  }
}