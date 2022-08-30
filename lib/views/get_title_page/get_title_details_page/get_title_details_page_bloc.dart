import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../models/Title.dart';
import 'get_title_details_page_event.dart';
import 'get_title_details_page_state.dart';
import 'package:http/http.dart' as http;

class GetTitleDetailsPageBloc
    extends Bloc<GetTitleDetailsPageEvent, GetTitleDetailsPageState> {
  GetTitleDetailsPageBloc(BuildContext context, TitleModel titleModel)
      : super(GetTitleDetailsPageState.initialState) {
    on<GetTitleObjectEvent>((event, emit) async {
      emit(state.clone(isLoading: true));
      emit(state.clone(error: titleModel.title, isLoading: false));
    });

    add(GetTitleObjectEvent());
  }
}
