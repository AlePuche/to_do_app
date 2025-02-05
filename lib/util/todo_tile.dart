import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right:25.0, top:25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.green[400],
            borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            //checkbox
            Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
            ),

            //task name
            Text(
                taskName,
              style: TextStyle(decoration: taskCompleted
                   ? TextDecoration.lineThrough
                   : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
