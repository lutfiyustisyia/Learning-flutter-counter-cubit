import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_lupi/counter/counter.dart';

class Counterview extends StatelessWidget {
  const Counterview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () {
              //nambah +1
              context.read<CounterCubit>().increment();
            },
          ),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () {
              //minus 1
              context.read<CounterCubit>().decrement();
            },
          ),
          FloatingActionButton(
            key: const Key('counterView_kali_floatingActionButton'),
            child: const Icon(Icons.no_adult_content),
            onPressed: () {
              //kali 2
              context.read<CounterCubit>().kali();
            },
          ),
          FloatingActionButton(
            key: const Key('counterView_reset_floatingActionButton'),
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              //reset
              context.read<CounterCubit>().reset();
            },
          ),
        ],
      ),
    );
  }
}
