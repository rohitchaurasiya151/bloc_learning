import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'bloc_counter_using_cubit/counter_observer.dart';
import 'bloc_counter_using_cubit/app.dart';
import 'complex_list_example/app.dart';
import 'complex_list_example/repository.dart';
import 'complex_list_example/simple_bloc_observer.dart';
import 'timer_example/app.dart';

void main() {
  runApp(getInitialApplication(ApplicationName.complexListExampleApp));
}

Widget getInitialApplication(ApplicationName name) {
  switch (name) {
    case ApplicationName.counterApp:
      Bloc.observer = CounterObserver();
      return const CounterApp();
    case ApplicationName.timerApp:
      return const TimerApp();
    case ApplicationName.complexListExampleApp:
      Bloc.observer = SimpleBlocObserver();
      return App(repository: Repository());
    default:
      return const CounterApp();
  }
}

enum ApplicationName { counterApp, timerApp, complexListExampleApp }
