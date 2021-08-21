import 'package:flutter/material.dart';
import 'package:list_app/widget/task_list.dart';
import 'package:list_app/screens/add_task_screen.dart';

 class TaskScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
        onPressed: ()
        {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen(),);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      child: Icon(Icons.list, size: 40.0,),
                  backgroundColor: Colors.white,
                    radius: 30.0,

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('My to-do list ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(

            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: TasksList(),
            ),

          ),
        ],
      ),
    );
  }
}

