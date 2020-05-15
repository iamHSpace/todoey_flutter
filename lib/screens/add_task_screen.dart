import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';


class AddTaskSCreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
              ),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
