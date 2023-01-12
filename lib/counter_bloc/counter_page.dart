import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Block Builder"),
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, count) {
          return Center(
            child: Text("$count", style: const TextStyle(fontSize: 24)),
          );
        },
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(CounterIncrementEvent());
          },
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(CounterDecrementEvent());
          },
          child: const Icon(Icons.remove),
        )
      ]),
    );
  }
}
