// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/E-commerce/screens/sign_in_page/sign_in_page_provider.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../../themes/custom_colors.dart';
import '../../../themes/custom_text_styles.dart';
import 'sign_up_page_event.dart';
import 'sign_up_page_state.dart';
import 'package:http/http.dart' as http;

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  late TextEditingController nameTextEditingController =
      TextEditingController();
  late TextEditingController emailTextEditingController =
      TextEditingController();
  late TextEditingController passwordTextEditingController =
      TextEditingController();
  SignUpPageBloc(BuildContext context) : super(SignUpPageState.initialState) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    on<SubmitUserDataEvent>((event, emit) async {
      try {
        emit(state.clone(isLoading: true));
        User? user = (await auth.createUserWithEmailAndPassword(
                email: event.email, password: event.password))
            .user;
        log('**************');
        log(user.toString());
        if (user != null) {
          user.updateDisplayName(event.name);
          await firestore.collection('users').doc(auth.currentUser!.uid).set({
            "name": event.name,
            "email": event.email,
            "status": "Unavalible",
            "uid": auth.currentUser!.uid
          });
          log('message');
          showTopSnackBar(
            context,
            const CustomSnackBar.success(
              backgroundColor: CustomColors.PRIMARY,
              message: "Successfully create the account, please login",
              textStyle: CustomTextStyles.ERROR_TEXT_STYLE,
            ),
          );
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => SignInPageProvider()),
            ),
          );
          emit(state.clone(isLoading: false));
        } else {
          showTopSnackBar(
            context,
            const CustomSnackBar.error(
              backgroundColor: CustomColors.ERROR,
              message: "Something went wrong, please try again",
              textStyle: CustomTextStyles.ERROR_TEXT_STYLE,
            ),
          );
          emit(state.clone(isLoading: false));
        }
      } catch (e) {
        showTopSnackBar(
          context,
          const CustomSnackBar.error(
            backgroundColor: CustomColors.ERROR,
            message: "Something went wrong, please try again",
            textStyle: CustomTextStyles.ERROR_TEXT_STYLE,
          ),
        );
        emit(state.clone(isLoading: false));
        return Future.error(e.toString());
      }
    });
  }
}
