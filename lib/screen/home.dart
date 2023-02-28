import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit_counter/cubit_counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bloc"),
        ),
        body: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${context.read<CounterCubit>().counter}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();

                    },
                    child: Text("Add"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();

                    },
                    child: Text("Minus"),
                  )
                ],
              ),
            );
          },
        ));
  }
}
