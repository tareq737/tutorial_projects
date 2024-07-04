import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<IncreaseCounterEvent>((event, emit) {
      counter++;
      emit(
        CounterHasIncreased(
          increasedCounterValue: counter,
        ),
      );
    });

    on<DecreaseCounterEvent>((event, emit) {
      counter--;
      emit(
        CounterHasDecreased(
          decreasedCounterValue: counter,
        ),
      );
    });
  }
}
