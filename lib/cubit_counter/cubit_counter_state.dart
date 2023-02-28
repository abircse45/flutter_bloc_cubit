part of 'cubit_counter_cubit.dart';

@immutable
abstract class CounterState extends Equatable {}

class CounterInitial extends CounterState {
  @override
  List<Object?> get props => [];
}

class CounterValueUpdate extends CounterState {
  int counter = 0;
  CounterValueUpdate({required this.counter});

  @override
  List<Object?> get props => [counter];
}
