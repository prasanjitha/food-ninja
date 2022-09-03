import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/views/signIn_page/home_screens/home_screen.dart';
import 'sign_in_page_event.dart';
import 'sign_in_page_state.dart';

class SignINPageBloc extends Bloc<SignINPageEvent, SignINPageState> {
  SignINPageBloc(BuildContext context) : super(SignINPageState.initialState) {
    on<LoginEvent>((event, emit) async {
      login(context, event.email, event.password);
    });
  }

  Future<User?> login(
      BuildContext context, String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      User? user = (await auth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      if (user != null) {
        log('success');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((context) => ChatHomeScreen()),
          ),
        );
        return user;
      } else {
        log('un success');
        return user;
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
