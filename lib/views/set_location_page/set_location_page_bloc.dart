import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'set_location_page_event.dart';
import 'set_location_page_state.dart';

class SetLocationPageBloc
    extends Bloc<SetLocationPageEvent, SetLocationPageState> {
  SetLocationPageBloc(BuildContext context)
      : super(SetLocationPageState.initialState);
}
