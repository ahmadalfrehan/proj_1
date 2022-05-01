
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_one/register/cubit/states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);
  /*  void userRegister({
    required String name,
    required String email,
    required String phone,
    required String password,
    required bool isEmailVerifaed,
  }) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      createUser(
          name: name,
          email: email,
          phone: phone,
          uId: value.user!.uid,
          isEmailVerifaed: isEmailVerifaed);
      emit(RegisterSuccessState());
    }).catchError((onError) {
      emit(RegisterErrorState(onError.toString()));
    });
  }

  var token = FirebaseMessaging.instance.getToken();

  void createUser({
    required String name,
    required String email,
    required String phone,
    required String uId,
    required bool isEmailVerifaed,
  }) async {
    var token = await FirebaseMessaging.instance.getToken();
    UsersModel U = UsersModel(
      name: name,
      email: email,
      phone: phone,
      uId: uId,
      Bio: "Hello There this is my Bio...!",
      Token: token.toString(),
      Cover: defaultCoverPictures,
      ImageProfile: defaultProrfilePictures,
      profilePicturePrivacy: "Every Body",
      BioPrivacy: "Every Body",
      coverPicturePrivacy: "Every Body",
      emailAddressPrivacy: "Every Body",
      phoneNumberPrivacy: "Every Body",
    );
    FirebaseFirestore.instance
        .collection('chatusers')
        .doc(uId)
        .set(U.toMap())
        .then((value) {
      emit(CreateSuccessState());
      print('done !');
    }).catchError((onError) {
      emit(CreateErrorState(onError.toString()));
      print(
        "error " + onError.toString(),
      );
    });
  }

  */
  bool ChangeBool(var c, var y) {
    emit(RegisterChangePasswordVisibilityState());
    c = y;
    return c;
  }

}
