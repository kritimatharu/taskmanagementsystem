import 'package:flutter/material.dart';

import 'package:taskmanagementsystem/components/Upper_header.dart';
import 'package:taskmanagementsystem/screens/menuPage.dart';
import 'package:taskmanagementsystem/screens/Privacy_Security.dart';

class HeplPage extends StatelessWidget {
  const HeplPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        left: 5,
        right: 10,
      ),
      child: Column(
        children: [
          upperHeader("Help", context, false, page: MenuPage()),
          SizedBox(
            height: 5,
          ),
          CustomOption('Report a problem', Icons.report, () {}),
          CustomOption('Account Status', Icons.account_box_outlined, () {}),
          CustomOption('Privacy & Security', Icons.security, () {}),
          CustomOption('Submit Request', Icons.request_page, () {}),
        ],
      ),
    ));
  }

  Widget CustomOption(String text, IconData icon, onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black87,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            Expanded(child: Container()),
            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black87),
          ],
        ),
      ),
    );
  }
}
