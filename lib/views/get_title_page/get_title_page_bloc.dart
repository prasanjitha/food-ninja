import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../models/Title.dart';
import 'get_title_page_event.dart';
import 'get_title_page_state.dart';
import 'package:http/http.dart' as http;

class GetTitlePageBloc extends Bloc<GetTitlePageEvent, GetTitlePageState> {
  GetTitlePageBloc(BuildContext context)
      : super(GetTitlePageState.initialState) {
    on<InitEvent>((event, emit) async {
      var url = 'https://jsonplaceholder.typicode.com/todos';
      late http.Response response;
      try {
        emit(state.clone(isLoading: true));
        List<TitleModel> titles = [];
        response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          List title = jsonDecode(response.body);
          for (var item in title) {
            titles.add(TitleModel.fromJson(item));
          }
          log(titles.toString());
          emit(state.clone(isLoading: false, myTitles: titles));
        } else {
          emit(state.clone(isLoading: false));
          return Future.error(response.statusCode.toString());
        }
      } catch (e) {
        emit(state.clone(isLoading: false));
        return Future.error(e.toString());
      }
    });
    add(InitEvent());
  }
}
