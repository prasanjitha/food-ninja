import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'signup_success_page_event.dart';
import 'signup_success_page_state.dart';

class SignUpSuccessPageBloc
    extends Bloc<SignUpSuccessPageEvent, SignUpSuccessPageState> {
  SignUpSuccessPageBloc(BuildContext context)
      : super(SignUpSuccessPageState.initialState);
}
