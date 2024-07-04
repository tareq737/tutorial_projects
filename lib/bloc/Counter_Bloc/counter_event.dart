part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}


class IncreaseCounterEvent extends CounterEvent {}

class DecreaseCounterEvent extends CounterEvent {}