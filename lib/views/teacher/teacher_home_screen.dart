import 'package:flutter/material.dart';

class TeacherHomeScreen extends StatelessWidget {
  const TeacherHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Home'),
      ),
      body: const Center(
        child: Text('Teacher Home Screen'),
      ),
    );
  }
}
