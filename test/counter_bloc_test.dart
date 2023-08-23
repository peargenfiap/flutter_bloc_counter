import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';
import "package:flutter_test/flutter_test.dart";

void main() {
  late CounterBloc bloc;

  setUp(() {
    bloc = CounterBloc();
  });

  group('CounterBloc', () {
    blocTest<CounterBloc, CounterState>(
        'Should emit IncrementState(1), when calls IncrementEvent',
        build: () => bloc,
        act: (bloc) => bloc.add(const IncrementEvent()),
        expect: () => [
              const IncremenetState(counter: 1),
            ]);
    blocTest<CounterBloc, CounterState>(
        'Should emit DecrementEvent(1), when calls DecrementEvent',
        build: () => bloc,
        act: (bloc) => bloc.add(const DecrementEvent()),
        expect: () => [
              const DecrementState(counter: -1),
            ]);
  });
}
