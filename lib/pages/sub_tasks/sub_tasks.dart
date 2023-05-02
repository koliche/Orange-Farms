import 'package:flutter/material.dart';

class SubTasks extends StatelessWidget {
  String taskType;

  SubTasks(this.taskType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(taskType,),
        elevation: 0,
      ),
      body: Center(child: Text(taskType)),
    );
  }
}
