import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/models/Todos.dart';
import 'profile_details_page_event.dart';
import 'profile_details_page_state.dart';
import 'package:http/http.dart' as http;

class ProfileDetailsPageBloc
    extends Bloc<ProfileDetailsPageEvent, ProfileDetailsPageState> {
  ProfileDetailsPageBloc(BuildContext context)
      : super(ProfileDetailsPageState.initialState) {
    on<InitEvent>((event, emit) async {
      var url = 'https://jsonplaceholder.typicode.com/todos';
      late http.Response response;
      List<Todos> todos = [];
      try {
        emit(state.clone(isLoading: true));
        response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          List data = jsonDecode(response.body);
          for (var item in data) {
            todos.add(Todos.fromJson(item));
          }
          emit(state.clone(isLoading: false, todos: todos));
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
