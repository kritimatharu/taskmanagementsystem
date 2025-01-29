import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagementsystem/components/CustomText.dart';
import 'package:taskmanagementsystem/components/Upper_header.dart';
import 'package:taskmanagementsystem/screens/Privacy_Security.dart';
import 'package:taskmanagementsystem/screens/menuPage.dart';
import 'package:taskmanagementsystem/widgets/constant.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  bool isSwitched = true;
  bool isSound = true;

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              upperHeader(
                'Settings',
                context,
                false,
                page: const MenuPage(),
              ),
              SizedBox(height: he * 0.035),
              GestureDetector(
                onTap: () {
                  // Task-specific interaction logic goes here
                },
                child: Container(
                  padding: EdgeInsets.all(he * 0.004),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 208, 240, 1),
                        Color.fromARGB(255, 253, 170, 53),
                      ],
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[200],
                    ),
                    padding: EdgeInsets.all(he * 0.012),
                    child: Row(
                      children: [
                        Container(
                          height: he * 0.07,
                          width: he * 0.07,
                          padding: EdgeInsets.all(he * 0.012),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[300],
                          ),
                          child: Icon(
                            Icons.workspace_premium_outlined,
                            size: 30,
                            color: MyThemeColor.textColor,
                          ),
                        ),
                        SizedBox(width: he * 0.015),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomText('Tasks', 26),
                                SizedBox(width: he * 0.005),
                                const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Color.fromARGB(255, 141, 127, 65),
                                ),
                              ],
                            ),
                            SizedBox(height: he * 0.0005),
                            const Text(
                              "Unlock our most exclusive features",
                              style: TextStyle(
                                fontSize: 14,
                                color: MyThemeColor.textColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 22, 23, 22),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: he * 0.025),
              Row(
                children: [
                  Icon(
                    isSound
                        ? Icons.volume_up_outlined
                        : Icons.volume_off_outlined,
                    size: 25,
                    color: MyThemeColor.textColor,
                  ),
                  SizedBox(width: he * 0.015),
                  const Text(
                    "Sounds",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                  const Spacer(),
                  CupertinoSwitch(
                    value: isSound,
                    onChanged: (bool value) {
                      setState(() {
                        isSound = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: he * 0.025),
              Row(
                children: [
                  Icon(
                    isSwitched
                        ? Icons.notifications_active_outlined
                        : Icons.notifications_off_outlined,
                    size: 25,
                    color: MyThemeColor.textColor,
                  ),
                  SizedBox(width: he * 0.015),
                  const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                  const Spacer(),
                  CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: he * 0.025),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrivacySecurity()),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_clock_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                    SizedBox(width: he * 0.015),
                    Text(
                      "Privacy & Security",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyThemeColor.textColor,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: MyThemeColor.textColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: he * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to About App
                },
                child: GestureDetector(
                  onTap: () {
                    // Navigate to About App
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 25,
                        color: MyThemeColor.textColor,
                      ),
                      SizedBox(
                        width: he * 0.015,
                      ),
                      const Text(
                        "About App",
                        style: TextStyle(
                          fontSize: 18,
                          color: MyThemeColor.textColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: MyThemeColor.textColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: he * 0.025,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to help post
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.help_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                    SizedBox(
                      width: he * 0.015,
                    ),
                    const Text(
                      "Help & Support",
                      style: TextStyle(
                        fontSize: 18,
                        color: MyThemeColor.textColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: MyThemeColor.textColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: he * 0.025,
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              SizedBox(
                height: he * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to logScreen
                },
                child: const Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 20,
                    color: MyThemeColor.textColor,
                  ),
                ),
              ),
              SizedBox(height: he * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
