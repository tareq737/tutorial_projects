import 'package:bloc_app/Pages/CounterPage.dart';
import 'package:bloc_app/Pages/OnOffPage.dart';
import 'package:bloc_app/Pages/homePage.dart';
import 'package:bloc_app/bloc/Counter_Bloc/counter_bloc.dart';
import 'package:bloc_app/bloc/On_Off_Bloc/on_off_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => OnOffBloc(),
        ),
        BlocProvider(
          create: (_) => CounterBloc(),
        ),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
