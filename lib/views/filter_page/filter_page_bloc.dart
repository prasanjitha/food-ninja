import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'filter_page_event.dart';
import 'filter_page_state.dart';

class FilterPageBloc extends Bloc<FilterPageEvent, FilterPageState> {
  FilterPageBloc(BuildContext context) : super(FilterPageState.initialState);
}
