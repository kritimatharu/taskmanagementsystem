import 'package:flutter/material.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  final weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  final day = ['11', '12', '13', '14', '15', '16', '17'];
  var selectedDay = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // Medium height
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal, // Horizontal scrolling
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedDay = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: selectedDay == index ? Colors.grey.withOpacity(0.3) : null,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weekDays[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14, // Medium font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  day[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12, // Medium font size
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 8, // Medium spacing between items
        ),
        itemCount: weekDays.length,
      ),
    );
  }
}
