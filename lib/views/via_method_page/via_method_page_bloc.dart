import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'via_method_page_event.dart';
import 'via_method_page_state.dart';

class ViaMethodPageBloc extends Bloc<ViaMethodPageEvent, ViaMethodPageState> {
  ViaMethodPageBloc(BuildContext context)
      : super(ViaMethodPageState.initialState);
}
