import 'package:flutter/material.dart';
import 'package:to_do_app/components/components.dart';
import 'package:to_do_app/components/constant.dart';

class NewTaskScreen extends StatefulWidget {
  // final List<Map> tasks;
  // NewTaskScreen({@required this.tasks});
  @override
  _NewTaskScreenState createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => buildTaskItem(tasks[index]),
        separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[300],
              ),
            ),
        itemCount: tasks.length);
  }
}
