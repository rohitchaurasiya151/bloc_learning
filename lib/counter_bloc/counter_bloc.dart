import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>((event, emit) => emit(state+1));
    on<CounterDecrementEvent>((event, emit) => emit(state-1));
  }
}
