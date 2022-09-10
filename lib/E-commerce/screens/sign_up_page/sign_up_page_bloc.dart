import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'sign_up_page_event.dart';
import 'sign_up_page_state.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  SignUpPageBloc(BuildContext context) : super(SignUpPageState.initialState);
}
