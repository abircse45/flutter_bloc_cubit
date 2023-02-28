import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'cubit_counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;

  void increment() {
    counter++;
    emit(CounterValueUpdate(counter: counter));
  }

  void decrement() {
    counter--;
    emit(CounterValueUpdate(counter: counter));
  }
}
