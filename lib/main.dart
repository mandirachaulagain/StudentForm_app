import 'package:flutter/material.dart';
import 'screens/student_form_screen.dart';

void main() {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StudentFormScreen(),
    );
  }
}
