import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'reset_password_page_event.dart';
import 'reset_password_page_state.dart';

class ResetPasswordPageBloc
    extends Bloc<ResetPasswordPageEvent, ResetPasswordPageState> {
  ResetPasswordPageBloc(BuildContext context)
      : super(ResetPasswordPageState.initialState) {
    on<ChangeNewPasswordEvent>((event, emitter) {
      log(event.newPassword);
      emitter(state.clone(newPassword: event.newPassword));
    });
    on<ChangeConPasswordEvent>((event, emitter) {
      log(event.conPassword);
      emitter(state.clone(newPassword: event.conPassword));
    });
    on<SubmitDataEvent>((event, emitter) {});
  }
}
