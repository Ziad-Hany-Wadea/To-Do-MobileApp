import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final String? taskTitle;
  final bool isChecked;
  final void Function(bool?) checkboxChange;
  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxChange
      });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChecked,
          onChanged: checkboxChange,
      ),

    );
  }
}


