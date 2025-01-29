import 'package:flutter/material.dart';
import 'package:taskmanagementsystem/models/task_model.dart';
import 'package:taskmanagementsystem/widgets/TaskTimeLine.dart';
import 'package:taskmanagementsystem/widgets/datepicker.dart';
import 'package:taskmanagementsystem/widgets/tasks_title.dart';

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        _buildAppBar(context),
        SliverToBoxAdapter(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Datepicker(), TasksTitle()],
            ),
          ),
        ),
        detailList!.isEmpty
            ? SliverFillRemaining(
                child: Container(
                  color: Colors.white,
                  height: 200,
                  child: Center(
                    child: Text(
                      'No Tasks yet',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ),
                ),
              )
            : SliverList(
                delegate: SliverChildBuilderDelegate(
                (context, index) => TaskTimeline(detailList[index]),
                )
              ),
      ]),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
        iconSize: 20,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
          iconSize: 20,
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${task.title ?? "No Title"} Task',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'You have ${task.left ?? 0} tasks left to do',
              style: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
