import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'calling_page_event.dart';
import 'calling_page_state.dart';

class CallingPageBloc extends Bloc<CallingPageEvent, CallingPageState> {
  CallingPageBloc(BuildContext context) : super(CallingPageState.initialState);
}
