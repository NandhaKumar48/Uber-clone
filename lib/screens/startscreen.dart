import 'package:flutter/material.dart';
import 'package:user_app/screens/Login.dart';

class Startscreen extends StatelessWidget {
  static const String idscreen = "startscreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.indigoAccent,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 150),
                  child: Text(
                    "Uber",
                    style: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ),
                Text(
                  "Move With Safety",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 30),
            color: Colors.indigoAccent,
            height: 100,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, Login.idscreen, (route) => false);
              },
              child: Text(
                "Get Started \u2794",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

