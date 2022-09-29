import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'user_home_page_event.dart';
import 'user_home_page_state.dart';

class UserHomePageBloc extends Bloc<UserHomePageEvent, UserHomePageState> {
  UserHomePageBloc(BuildContext context)
      : super(UserHomePageState.initialState) {
    on<GetUserNameEvent>((event, emit) {
      log(event.username);
      emit(state.clone(username: event.username));
    });
  }
}
