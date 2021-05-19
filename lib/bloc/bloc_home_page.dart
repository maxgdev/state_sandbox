import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:state_sandbox/bloc/counter_bloc.dart';
import 'package:state_sandbox/bloc/counter_event.dart';

class BlocHomePage extends StatefulWidget {
  BlocHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BlocHomePageState createState() => _BlocHomePageState();
}

class _BlocHomePageState extends State<BlocHomePage> {
  // Using BloC and Stateful Widget
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
            stream: _bloc.counter,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'The number now is :',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => _bloc.counterEventSink.add(IncrementEvent()),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () => _bloc.counterEventSink.add(DecrementEvent()),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
