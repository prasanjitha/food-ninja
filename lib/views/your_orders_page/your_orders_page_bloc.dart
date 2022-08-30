import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'your_orders_page_event.dart';
import 'your_orders_page_state.dart';

class YourOrdersPageBloc
    extends Bloc<YourOrdersPageEvent, YourOrdersPageState> {
  YourOrdersPageBloc(BuildContext context)
      : super(YourOrdersPageState.initialState);
}
