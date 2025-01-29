import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagementsystem/models/task_model.dart';
import 'package:taskmanagementsystem/widgets/constant.dart';
import 'package:taskmanagementsystem/widgets/detail_page.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTasks();

  Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: taskList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => taskList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, taskList[index]),
        ),
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),
      color: Colors.grey.shade600,
      strokeWidth: 2,
      dashPattern: const [10, 10],
      child: Center(
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.grey.shade600,
        ),
      ),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DetailPage(task)));
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: task.bgColor ?? Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                task.iconData ?? Icons.error,
                color: task.iconColor ?? Colors.black,
                size: 30,
              ),
              const SizedBox(height: 30),
              Text(
                task.title ?? 'No Title',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                task.description!,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  _buildTaskStatus(
                      Colors.grey, task.iconColor!, '${task.left}left'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildTaskStatus(
                      task.btnColor!, task.iconColor!, '${task.done}done'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txtColor, String txt) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        txt,
        style: TextStyle(
          color: txtColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
