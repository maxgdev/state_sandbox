import 'package:flutter/material.dart';
// import './set_state/set_state_home_page.dart';
// import './bloc/bloc_home_page.dart';
import './mobx/mobx_home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobx Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      // home: SetStateHomePage(title: 'Flutter SetState Home Page'),
      // home: BlocHomePage(title: 'Flutter BloC Home Page'),
      home: MobxHomePage(),
       
    );
  }
}

// Flutter BLoC Pattern Tutorial From Scratch
// https://www.youtube.com/watch?v=oxeYeMHVLII

