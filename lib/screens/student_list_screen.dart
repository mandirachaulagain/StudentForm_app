import 'package:flutter/material.dart';
import '../models/student.dart';
import 'student_detail_screen.dart';

class StudentListScreen extends StatelessWidget {
  final List<Student> students;

  StudentListScreen({required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: students.isEmpty
          ? Center(
        child: Text(
          'No students saved yet!',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                '${students[index].firstName} ${students[index].lastName}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetailScreen(
                    student: students[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
