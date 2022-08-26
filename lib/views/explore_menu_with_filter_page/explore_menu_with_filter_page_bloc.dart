import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'explore_menu_with_filter_page_event.dart';
import 'explore_menu_with_filter_page_state.dart';

class ExploreMenuWithFilterPageBloc extends Bloc<ExploreMenuWithFilterPageEvent,
    ExploreMenuWithFilterPageState> {
  ExploreMenuWithFilterPageBloc(BuildContext context)
      : super(ExploreMenuWithFilterPageState.initialState);
}
