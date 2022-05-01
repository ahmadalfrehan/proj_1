import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_one/Cubits/Cubit.dart';
import 'package:project_one/Cubits/States.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TourismCubit(),
      child: BlocConsumer<TourismCubit, Tourism>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFECF0F3),
              elevation: 0,
              title: Text(
                  TourismCubit.get(context)
                      .titles[TourismCubit.get(context).currentIndex],
                  style: const TextStyle(color: Colors.blueGrey)),
            ),
            backgroundColor: Color(0xFFECF0F3),
            body: Container(
              child: TourismCubit.get(context)
                  .screens[TourismCubit.get(context).currentIndex],
            ),
            bottomNavigationBar: CurvedNavigationBar(
              index: TourismCubit.get(context).currentIndex,
              onTap: (index) {
                TourismCubit.get(context).changeIndexBottomNavigationBar(index);
              },
              color: Colors.white,
              backgroundColor: const Color(0xFFECF0F3),
              buttonBackgroundColor: Colors.white,
              items: const [
                Icon(Icons.home),
                Icon(Icons.person_pin_rounded),
                Icon(Icons.settings),

              ],
            ),
          );
        },
      ),
    );
  }
}
