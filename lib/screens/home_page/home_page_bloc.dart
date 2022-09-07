import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_page_event.dart';
import 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(BuildContext context) : super(HomePageState.initialState) {
    on<InitEvent>((event, emit) {});

    on<GetProductDetailsEvent>((event, emit) {
      log(event.name);
      emit(state.clone(name: event.name, price: event.price));
    });
    add(InitEvent());

    on<SubmitUserDataEvent>((event, emit) {
      log(event.price);
    });
  }
}
