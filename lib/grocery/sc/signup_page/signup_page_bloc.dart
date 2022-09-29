import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'signup_page_event.dart';
import 'signup_page_state.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  late TextEditingController nameTextEditingController =
      TextEditingController();
  late TextEditingController surnameTextEditingController =
      TextEditingController();
  late TextEditingController emailTextEditingController =
      TextEditingController();
  SignUpPageBloc(BuildContext context) : super(SignUpPageState.initialState) {
    on<SignUpEvent>((event, emit) {
      var user = {
        'name': event.name,
        'surname': event.surname,
        'email': event.email,
      };
      log(user.toString());
    });
  }
}
