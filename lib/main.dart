import 'Contents//student-login.dart';
import 'package:flutter/material.dart';
import 'Contents//home.dart';
import 'Contents//student.dart';
import 'Contents//teacher.dart';
import 'Contents//parent.dart';
import 'Contents//teacher-login.dart';
import 'Contents//parent-login.dart';
import 'Contents//SignUp.dart';
import 'Contents//student-profile.dart';
import 'Contents//Setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => landing(),
          '/student': (context) => const student1(),
          '/teacher': (context) => const teacher1(),
          '/parent': (context) => const parent1(),
          '/stud-login': (context) => const studlogin(),
          '/teach-login': (context) => const teachlogin(),
          '/par-login': (context) => const parlogin(),
          '/signup': (context) => const SignUp(),
          '/StudentProfile': (context) => const StudentProfile(),
          '/Settings': (context) => const Settings(),
        });
  }
}
