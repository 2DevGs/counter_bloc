import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {

  const CounterBlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<CounterBloc>();
    print('Build');
      return Scaffold(
          appBar: AppBar(
            title: const Text('Counter Bloc'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    print('Build Counter');
                    return Text(
                    'Counter ${state.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: (){
                        context.read<CounterBloc>().add(CounterIncrement());
                      },
                      icon: const Icon(Icons.add), 
                      label: const Text(''),
                    ),
                    TextButton.icon(
                      onPressed: (){
                        context.read<CounterBloc>().add(CounterDecrement());
                      },
                      icon: const Icon(Icons.remove), 
                      label: const Text(''),
                    ),
                  ],
                )
              ],
            ),
          ),
      );
  }
}