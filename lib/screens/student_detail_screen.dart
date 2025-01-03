import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentDetailScreen extends StatelessWidget {
  final Student student;

  StudentDetailScreen({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${student.firstName} ${student.lastName} Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name: ${student.firstName}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Last Name: ${student.lastName}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Age: ${student.age}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Email: ${student.email}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Address: ${student.address}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Location: ${student.location}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
