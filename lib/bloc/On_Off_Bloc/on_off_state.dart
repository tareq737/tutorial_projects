part of 'on_off_bloc.dart';

sealed class OnOffState {}

final class OnOffInitial extends OnOffState {}

class OnOffChanged extends OnOffState {
  final bool newOnOffState;
  
  OnOffChanged({required this.newOnOffState});
}
