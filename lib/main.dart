import 'package:flutter/material.dart';
import 'package:user_app/screens/Home.dart';
import 'package:user_app/screens/Login.dart';
import 'package:user_app/screens/startscreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User App',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: Startscreen(),
      debugShowCheckedModeBanner: false,
    initialRoute: Home.idscreen,
    routes: {
      Login.idscreen: (context) => Login(),
      Home.idscreen: (context) => Home(),
      Startscreen.idscreen: (context) => Startscreen(),
      //Home.idScreen: (context) => Home(),
    },
    );

  }
}
