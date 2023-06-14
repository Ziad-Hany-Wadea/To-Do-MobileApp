import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(
    this.addTaskCallback,);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding:EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add New Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign:TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30,),
          TextButton(
            onPressed: (){
              print(newTaskTitle);
              addTaskCallback(newTaskTitle);
            },
            child: Text("Add"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
