import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'edit_location_page_event.dart';
import 'edit_location_page_state.dart';

class EditLocationPageBloc
    extends Bloc<EditLocationPageEvent, EditLocationPageState> {
  EditLocationPageBloc(BuildContext context)
      : super(EditLocationPageState.initialState);
}
