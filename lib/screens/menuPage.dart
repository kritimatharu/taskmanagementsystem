import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmanagementsystem/screens/HomePage.dart';
import 'package:taskmanagementsystem/screens/contactpage.dart';
import 'package:taskmanagementsystem/screens/hepl_page.dart';
import 'package:taskmanagementsystem/screens/settingpage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: he * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Close icon at the top-right corner
            Padding(
              padding: EdgeInsets.only(top: he * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: const Icon(
                      Icons.close_rounded,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: he * 0.01),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
              },
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HeplPage()),
                );
              },
              child: Text(
                'Help',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settingpage(),
                ),
              ),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: he * 0.03,
            ),
            GestureDetector(
              onTap: () => SystemNavigator.pop(),
              child: const Text(
                'LogOut',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
