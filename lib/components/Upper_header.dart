import 'package:flutter/material.dart';
import 'package:taskmanagementsystem/screens/HomePage.dart';
import 'customText.dart';

Widget upperHeader(String text, BuildContext context, bool isIcon,
    {required Widget page}) {
  var he = MediaQuery.of(context).size.height;

  return Padding(
    padding: EdgeInsets.only(top: he * 0.03),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 24),
        ),
        SizedBox(width: he * 0.03),
        CustomText(text, 30),
        Expanded(child: Container()),
        isIcon ? Icon(Icons.search, color: Colors.black) : Container(),
      ],
    ),
  );
}
