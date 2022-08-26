import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'explore_resturant_with_filter_page_event.dart';
import 'explore_resturant_with_filter_page_state.dart';

class ExploreResturantWithFilterPageBloc extends Bloc<
    ExploreResturantWithFilterPageEvent, ExploreResturantWithFilterPageState> {
  ExploreResturantWithFilterPageBloc(BuildContext context)
      : super(ExploreResturantWithFilterPageState.initialState);
}
