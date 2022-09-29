import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'register_user_page_event.dart';
import 'register_user_page_state.dart';

class RegisterUserPageBloc
    extends Bloc<RegisterUserPageEvent, RegisterUserPageState> {
  late TextEditingController nameTextEditingController =
      TextEditingController();
  RegisterUserPageBloc(BuildContext context)
      : super(RegisterUserPageState.initialState);
}
