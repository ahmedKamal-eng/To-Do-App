import 'package:flutter/material.dart';

class ArchivedTaskScreen extends StatefulWidget {
  @override
  _ArchivedTaskScreenState createState() => _ArchivedTaskScreenState();
}

class _ArchivedTaskScreenState extends State<ArchivedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Archived Task',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
