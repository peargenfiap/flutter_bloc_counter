import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    on<IncrementEvent>(_onIncrementEvent);
    on<DecrementEvent>(_onDecrementEvent);
    on<GenerateRandomEvent>(_onGenerateRandomValueEvent);
    on<ResetEvent>(_onResetEvent);
  }

  void _onIncrementEvent(IncrementEvent event, Emitter emit) {
    emit(IncremenetState(counter: state.counter + 1));
  }

  void _onDecrementEvent(DecrementEvent event, Emitter emit) {
    emit(DecrementState(counter: state.counter - 1));
  }

  void _onGenerateRandomValueEvent(
      GenerateRandomEvent event, Emitter emit) async {
    emit(GenerateRandomState(counter: Random().nextInt(1000)));
  }

  void _onResetEvent(ResetEvent event, Emitter emit) {
    emit(const DecrementState(counter: 0));
  }
}
