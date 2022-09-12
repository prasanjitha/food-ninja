import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'main_page_one_event.dart';
import 'main_page_one_state.dart';

class MainPageOneBloc extends Bloc<MainPageOneEvent, MainPageOneState> {
  MainPageOneBloc(BuildContext context) : super(MainPageOneState.initialState);
}
