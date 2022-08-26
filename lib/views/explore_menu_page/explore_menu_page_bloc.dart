import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'explore_menu_page_event.dart';
import 'explore_menu_page_state.dart';

class ExploreMenuPageBloc
    extends Bloc<ExploreMenuPageEvent, ExploreMenuPageState> {
  ExploreMenuPageBloc(BuildContext context)
      : super(ExploreMenuPageState.initialState);
}
