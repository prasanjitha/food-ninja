import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'main_page_event.dart';
import 'main_page_state.dart';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  MainPageBloc(BuildContext context) : super(MainPageState.initialState);
}
