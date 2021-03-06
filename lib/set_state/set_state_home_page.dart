import 'package:flutter/material.dart';

class SetStateHomePage extends StatefulWidget {
  SetStateHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SetStateHomePageState createState() => _SetStateHomePageState();
}

class _SetStateHomePageState extends State<SetStateHomePage> {
  int _counter = 0;

  // Using SetState and Stateful Widget

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
            'The number now is :',
            style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 30,),
          FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: Icon(Icons.remove),
      )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
