part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;

  const CounterState({required this.counter});

  @override
  List<Object> get props => [counter];
}

final class CounterInitial extends CounterState {
  const CounterInitial({super.counter = 0});
}

class IncremenetState extends CounterState {
  const IncremenetState({required super.counter});
}

class DecrementState extends CounterState {
  const DecrementState({required super.counter});
}

class GenerateRandomState extends CounterState {
  const GenerateRandomState({required super.counter});
}

class ResetState extends CounterState {
  const ResetState({required super.counter});
}
