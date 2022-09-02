import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'sign_up_page_event.dart';
import 'sign_up_page_state.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  SignUpPageBloc(BuildContext context) : super(SignUpPageState.initialState) {
    on<SubmitUserDetaEvent>((event, emit) async {
      try {
        // FirebaseAuth.instance
        //     .createUserWithEmailAndPassword(
        //         email: event.email, password: event.password)
        //     .then((value) {
        //   log('created user');
        // }).onError((error, stackTrace) {
        //   log(error.toString());
        // });
      } catch (e) {
        return Future.error(e.toString());
      }
    });
  }
}
