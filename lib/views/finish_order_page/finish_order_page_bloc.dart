import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'finish_order_page_event.dart';
import 'finish_order_page_state.dart';

class FinishOrderPageBloc
    extends Bloc<FinishOrderPageEvent, FinishOrderPageState> {
  FinishOrderPageBloc(BuildContext context)
      : super(FinishOrderPageState.initialState);
}
