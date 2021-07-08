import 'package:flutter/material.dart';
import 'package:to_do_app/aechived_tasks/arcive_task_screen.dart';
import 'package:to_do_app/done_tasks/done_task_screen.dart';
import 'package:to_do_app/new_tasks/new_task_screen.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screen = [
    NewTaskScreen(),
    DoneTaskScreen(),
    ArchivedTaskScreen()
  ];

  List<String> title = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[currentIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'archive'),
        ],
      ),
    );
  }
}
