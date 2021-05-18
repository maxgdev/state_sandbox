import 'dart:async';

import 'package:async/async.dart';
import './counter_event.dart';

class CounterBloc {
  int _counter = 0;

  // Stream - State??
  final _counterStateController = StreamController<int>();
  StreamSink<int> get _inCounter => _counterStateController.sink;
  Stream<int> get counter => _counterStateController.stream;

  // Sink - Event ??
  final _counterEventController = StreamController<CounterEvent>();
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent)
      _counter++;
    else
      _counter--;
    _inCounter.add(_counter);
  }
}
