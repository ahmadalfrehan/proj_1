import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_one/Cubits/Cubit.dart';
import 'package:project_one/Cubits/States.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TourismCubit(),
      child: BlocConsumer<TourismCubit, Tourism>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(

          );
        },
      ),
    );
  }
}
