import 'package:flutter/material.dart';

class TasksTitle extends StatelessWidget {
  const TasksTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Tasks Title',
          style: TextStyle(
            color:Colors.grey,
            fontSize: 26,
            fontWeight: FontWeight.w500,
          ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color:Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text('Timeline',
                style: TextStyle(
                  color:Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                ),
                SizedBox(
                  width:5,
                ),
                Icon(Icons.arrow_forward_ios,
                color:Colors.grey,
                size:15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
