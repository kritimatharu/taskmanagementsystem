import 'package:flutter/material.dart';
import 'package:taskmanagementsystem/widgets/constant.dart';

class Task {
  IconData? iconData;
  String? title;
  String? description;

  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;

  bool isLast;

  Task({
    this.iconData,
    this.title,
    this.description,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.desc,
    this.done,
    this.isLast = false,
  });

  static get kRedLight => null;

  static List<Task> generateTasks() {
    return [
      Task(
          iconData: Icons.person_rounded,
          title: 'Personal',
          description: 'Tasks related to personal life and self-care.',
          bgColor: kBluelight,
          iconColor: Colors.white,
          btnColor: kBlue,
          left: 5,
          done: 3,
          desc: [
            {
              'time': '9:00AM',
              'title': 'create a video',
              'slot': '9:00AM - 10:00AM',
              'tlColor': kRedDark,
              'bgColor': kRedlight,
            },
            {
              'time': '10:00AM',
              'title': 'Watching a movie',
              'slot': '10:00AM - 11:00AM',
              'tlColor': kRedDark,
              'bgColor': kRedlight,
            },
            {
              'time': '11:00AM',
              'title': '',
              'slot': '',
              'tlColor': kRedDark,
              'bgColor': kRedlight,
            },
            {
              'time': '12:00PM',
              'title': 'Go to the GYM',
              'slot': '12:00PM - 1:00PM',
              'tlColor': kRedDark,
              'bgColor': kRedlight,
            },
            {
              'time': '1:00PM',
              'title': 'Call with client',
              'slot': '1:00PM - 2:00PM',
              'tlColor': Colors.grey.withOpacity(0.2),
              'bgColor': kYellowlight,
            },
          ]),
      Task(
        iconData: Icons.work_rounded,
        title: 'Work',
        description: 'Tasks to work and professional life.',
        bgColor: kYellowlight,
        iconColor: Colors.black,
        btnColor: kYellow,
        left: 1,
        done: 4,
      ),
      Task(
        iconData: Icons.favorite_rounded,
        title: 'Health',
        description: 'Tasks related to healthand fitness.',
        bgColor: kRedlight,
        iconColor: Colors.black,
        btnColor: kRed,
        left: 2,
        done: 6,
      ),
      Task(
        isLast: true, // This will trigger _buildAddTask
      ),
    ];
  }
}
