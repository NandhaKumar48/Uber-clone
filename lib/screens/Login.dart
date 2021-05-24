import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_app/screens/otpscreen.dart';

class Login extends StatelessWidget {
  static const String idscreen = "login";

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your mobile number",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/india.png"),
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.keyboard_arrow_down,
                        size: 14, color: Colors.grey[400]),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "+91",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: "09876543210",
                          hintStyle: TextStyle(fontSize: 18),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.black, width: 1.0),
                          ),
                        ),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "By continuing you may receive an SMS \nfor verification.Message and data rates may apply.",
                    style: TextStyle(fontSize: 13,height: 1.6),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>OTPScreen(_controller.text)),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigoAccent,
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 140, vertical: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
