import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'rate_resturant_page_event.dart';
import 'rate_resturant_page_state.dart';

class RateResturantPageBloc
    extends Bloc<RateResturantPageEvent, RateResturantPageState> {
  RateResturantPageBloc(BuildContext context)
      : super(RateResturantPageState.initialState);
}
