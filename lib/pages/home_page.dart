import 'package:flutter/material.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of tasks
  List toDoList = [
    ["Mi primera App", false],
    ["Practicar Flutter", true],
  ];

  // function to handle checkbox change
  void checkBoxChanged(bool? value,int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: const Center(
          child:Text('To Do'),
        ),
        backgroundColor: Colors.green[400],
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context,index){
          return ToDoTile(
              taskName: toDoList[index][0],
              taskCompleted: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
    );
  }
}
