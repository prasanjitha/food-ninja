// ignore_for_file: use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/screens/home_page/home_page_provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../themes/custom_colors.dart';
import '../../../themes/custom_text_styles.dart';
import 'sign_in_page_event.dart';
import 'sign_in_page_state.dart';

class SignInPageBloc extends Bloc<SignInPageEvent, SignInPageState> {
  late TextEditingController emailTextEditingController =
      TextEditingController();
  late TextEditingController passwordTextEditingController =
      TextEditingController();
  SignInPageBloc(BuildContext context) : super(SignInPageState.initialState) {
    on<SubmitUserDataEvent>((event, emit) async {
      FirebaseAuth auth = FirebaseAuth.instance;
      try {
        emit(state.clone(isLoading: true));
        User? user = (await auth.signInWithEmailAndPassword(
                email: event.email, password: event.password))
            .user;
        if (user != null) {
          const CustomSuccessSnackBar();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => HomePageProvider()),
            ),
          );
          emit(state.clone(isLoading: false));
        } else {
          showTopSnackBar(
            context,
            const CustomSuccessSnackBar(),
          );
          emit(state.clone(isLoading: false));
        }
      } catch (e) {
        showTopSnackBar(
          context,
          const CustomErrorSnackBar(),
        );
        emit(state.clone(isLoading: false));

        return Future.error(e.toString());
      }
    });
  }
}

class CustomErrorSnackBar extends StatelessWidget {
  const CustomErrorSnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSnackBar.error(
      backgroundColor: CustomColors.ERROR,
      message: "Something went wrong, please try again",
      textStyle: CustomTextStyles.ERROR_TEXT_STYLE,
    );
  }
}

class CustomSuccessSnackBar extends StatelessWidget {
  const CustomSuccessSnackBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomSnackBar.error(
      backgroundColor: CustomColors.ERROR,
      message: "Something went wrong, please try again",
      textStyle: CustomTextStyles.ERROR_TEXT_STYLE,
    );
  }
}
