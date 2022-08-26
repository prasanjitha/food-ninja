import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'explore_resturant_page_event.dart';
import 'explore_resturant_page_state.dart';

class ExploreResturantPageBloc
    extends Bloc<ExploreResturantPageEvent, ExploreResturantPageState> {
  ExploreResturantPageBloc(BuildContext context)
      : super(ExploreResturantPageState.initialState);
}
