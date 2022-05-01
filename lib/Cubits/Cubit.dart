import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_one/Home/HomePage.dart';
import 'package:project_one/Profile/Profile.dart';

import '../Settings/Settings.dart';
import 'States.dart';

class TourismCubit extends Cubit<Tourism> {
  TourismCubit() : super(TourismInitial());

  static TourismCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List titles = ['HomePage','MyProfile','Settings'];
  List screens = [const HomePage(),const Profile(),SettingsS()];

  changeIndexBottomNavigationBar(index) {
    currentIndex = index;
    emit(TourismChangeIndexBottomNavigation());
  }
}
