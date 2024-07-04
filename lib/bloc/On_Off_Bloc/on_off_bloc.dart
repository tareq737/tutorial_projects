import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'on_off_event.dart';
part 'on_off_state.dart';

class OnOffBloc extends Bloc<OnOffEvent, OnOffState> {
  OnOffBloc() : super(OnOffInitial()) {
    on<OnOffEvent>((event, emit) {
      if (event is OnOffToggled) {
        emit(OnOffChanged(newOnOffState: !event.currentState));
      }
    });
  }
}
