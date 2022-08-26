import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'call_ringing_page_event.dart';
import 'call_ringing_page_state.dart';

class CallRIngingPageBloc
    extends Bloc<CallRIngingPageEvent, CallRIngingPageState> {
  CallRIngingPageBloc(BuildContext context)
      : super(CallRIngingPageState.initialState);
}
