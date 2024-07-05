import 'package:bloc_app/Pages/homePage.dart';
import 'package:bloc_app/bloc/On_Off_Bloc/on_off_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnOffPage extends StatelessWidget {
  const OnOffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<OnOffBloc, OnOffState>(
          builder: (context, state) {
            bool isOn = false;

            if (state is OnOffChanged) {
              isOn = state.newOnOffState;
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: isOn
                      ? const Icon(
                          Icons.light_mode,
                          key: ValueKey('on'),
                          color: Colors.amber,
                          size: 300,
                        )
                      : Icon(
                          Icons.dark_mode,
                          key: const ValueKey('off'),
                          size: 300,
                          color: Colors.grey.shade500,
                        ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<OnOffBloc>().add(
                          OnOffToggled(currentState: isOn),
                        );
                  },
                  child: const Text(
                    'On / Off',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  child: const Text('Home Page'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
