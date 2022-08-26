import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'signup_process_page_event.dart';
import 'signup_process_page_state.dart';

class SignupProcessPageBloc
    extends Bloc<SignupProcessPageEvent, SignupProcessPageState> {
  SignupProcessPageBloc(BuildContext context)
      : super(SignupProcessPageState.initialState) {
    on<GetUserInputEvent>((event, emit) {
      emit(state.clone(
          firstName: event.fistName,
          lastName: event.lastName,
          mobile: event.mobile));
    });
  }
}
