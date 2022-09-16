import 'dart:developer';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'catelog_one_page_event.dart';
import 'catelog_one_page_state.dart';

class CatelogOnePageBloc
    extends Bloc<CatelogOnePageEvent, CatelogOnePageState> {
  CatelogOnePageBloc(BuildContext context)
      : super(CatelogOnePageState.initialState) {
    on<ChangeFavoriteIconStateEvent>((event, emit) {
      emit(state.clone(init: !event.isFav));
    });
  }
}
