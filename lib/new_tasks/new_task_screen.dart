import 'package:flutter/material.dart';

class NewTaskScreen extends StatefulWidget {
  @override
  _NewTaskScreenState createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'New Task',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
