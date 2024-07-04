part of 'on_off_bloc.dart';

@immutable
sealed class OnOffEvent {}

class OnOffToggled extends OnOffEvent {
  final bool currentState;

  OnOffToggled({required this.currentState});
}
