import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart';

class MobxHomePage extends StatelessWidget {
  final counter = Counter();

  // Using Mobx

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mobx Home Page'"),
      ),
      body: Center(
        child: Observer(
          // builder: (context) => Text("${counter.value}"),
          builder: (context) => 
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'The number now is :',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                '${counter.value}"',
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          )
          ,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: counter.increment,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: counter.decrement,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
