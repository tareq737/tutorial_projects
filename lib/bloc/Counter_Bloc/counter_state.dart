part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}



class CounterHasIncreased extends CounterState {
  int increasedCounterValue;
  CounterHasIncreased({
    required this.increasedCounterValue,
  });
}

class CounterHasDecreased extends CounterState {
  int decreasedCounterValue;
  CounterHasDecreased({
    required this.decreasedCounterValue,
  });
}