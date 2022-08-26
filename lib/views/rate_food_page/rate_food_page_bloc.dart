import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'rate_food_page_event.dart';
import 'rate_food_page_state.dart';

class RateFoodPageBloc extends Bloc<RateFoodPageEvent, RateFoodPageState> {
  RateFoodPageBloc(BuildContext context)
      : super(RateFoodPageState.initialState);
}
