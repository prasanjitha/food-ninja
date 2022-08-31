import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'details_menu_page_event.dart';
import 'details_menu_page_state.dart';

class DetailsMenuPageBloc
    extends Bloc<DetailsMenuPageEvent, DetailsMenuPageState> {
  DetailsMenuPageBloc(BuildContext context)
      : super(DetailsMenuPageState.initialState);
}
