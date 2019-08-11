import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class HomeBloc extends BlocBase {

  var count = new BehaviorSubject<int>.seeded(0);

  StreamSink<int> get countIn => count.sink;
  Observable<int> get countOut => count.stream;

  increment() => this.countIn.add(this.count.value + 1);

  fabAction() => this.increment();

  //dispose will be called automatically by closing its streams
  @override
  void dispose() {
    count.close();
    super.dispose();
  }
}
