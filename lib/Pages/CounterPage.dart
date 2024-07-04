import 'package:bloc_app/Pages/homePage.dart';
import 'package:bloc_app/bloc/Counter_Bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecreaseCounterEvent());
                  },
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: BlocBuilder<CounterBloc, CounterState>(
                    builder: (context, state) {
                      int counterValue;
                      if (state is CounterHasIncreased) {
                        counterValue = state.increasedCounterValue;
                      } else if (state is CounterHasDecreased) {
                        counterValue = state.decreasedCounterValue;
                      } else {
                        counterValue = 0;
                      }
                      return Text(
                        counterValue.toString(),
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      );
                    },
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncreaseCounterEvent());
                  },
                  child: const Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),SizedBox(height: 100,)
            ,ElevatedButton(
              onPressed: () {
                Navigator.push(
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
        ),
      ),
    );
  }
}
