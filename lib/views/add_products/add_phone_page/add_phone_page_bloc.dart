import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'add_phone_page_event.dart';
import 'add_phone_page_state.dart';

class AddPhonePageBloc extends Bloc<AddPhonePageEvent, AddPhonePageState> {
  AddPhonePageBloc(BuildContext context)
      : super(AddPhonePageState.initialState);
}
