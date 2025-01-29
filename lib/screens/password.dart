import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagementsystem/components/Upper_header.dart';
import 'package:taskmanagementsystem/screens/Privacy_Security.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          upperHeader("Change Password", context, false,
              page: PrivacySecurity()),
          SizedBox(
            height: 0.015,
          ),
          Text(
            'Your password must be atleast 6 characters and should include a combination of numbers, letters,special character',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 0.01,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              labelText: 'Current Password',
              labelStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: he * 0.01,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              labelText: 'New Password',
              labelStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: he * 0.02,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              labelText: 'Comfirm Password',
              labelStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: he * 0.06,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Change Password',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
