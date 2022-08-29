import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'order_details_page_event.dart';
import 'order_details_page_state.dart';

class OrdrDetailsPageBloc
    extends Bloc<OrdrDetailsPageEvent, OrdrDetailsPageState> {
  OrdrDetailsPageBloc(BuildContext context)
      : super(OrdrDetailsPageState.initialState);
}
