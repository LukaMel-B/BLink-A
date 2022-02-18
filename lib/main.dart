import 'Contents//student-login.dart';
import 'package:flutter/material.dart';
import 'Contents//home.dart';
import 'Contents//student.dart';
import 'Contents//teacher.dart';
import 'Contents//parent.dart';
import 'Contents//teacher-login.dart';
import 'Contents//parent-login.dart';
import 'Contents//SignUp.dart';
import 'Contents//teacher-profile-edit.dart';
import 'Contents//student-profile-edit.dart';
import 'Contents//teachers-profile-view.dart';
import 'Contents//student-profile-view.dart';
import 'Contents//parent-profile-edit.dart';
import 'Contents//parent-profile-view.dart';
import 'Contents//Setting.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          '/StudentProfileEdit': (context) => const StudentProfileEdit(),
          '/TeacherProfile': (context) => const TeacherProfile(),
          '/TeacherProfileEdit': (context) => const TeacherProfileEdit(),
          '/ParentProfile': (context) => const ParentProfile(),
          '/ParentProfileEdit': (context) => const ParentProfileEdit(),
          '/Settings': (context) => const Settings(),
        });
  }
}
