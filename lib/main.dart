import 'package:flutter/material.dart';
import './set_state/set_state_home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SetState Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: SetStateHomePage(title: 'Flutter SetState Home Page'),
    );
  }
}

