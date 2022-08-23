import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'sign_in_page_event.dart';
import 'sign_in_page_state.dart';

class SignINPageBloc extends Bloc<SignINPageEvent, SignINPageState> {
  SignINPageBloc(BuildContext context) : super(SignINPageState.initialState);
}
