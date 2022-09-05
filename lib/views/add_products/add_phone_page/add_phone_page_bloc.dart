import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/views/add_products/add_phone_page/add_phone_page_view.dart';
import 'add_phone_page_event.dart';
import 'add_phone_page_state.dart';
import 'package:http/http.dart' as http;

class AddPhonePageBloc extends Bloc<AddPhonePageEvent, AddPhonePageState> {
  AddPhonePageBloc(BuildContext context)
      : super(AddPhonePageState.initialState) {
    on<InitEvent>((event, emit) async {
      http.Response response;
      List<String> message = [];
      try {
        emit(state.clone(isLoading: true));
        response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

        if (response.statusCode == 200) {
          List messages = jsonDecode(response.body);
          for (var item in messages) {
            var name = item['title'];
            message.add(name);
          }
          log(message.toString());
          emit(state.clone(isLoading: false, message: message));
        } else {
          return Future.error(response.statusCode.toString());
        }
      } catch (e) {
        return Future.error(e.toString());
      }
    });
    add(InitEvent());
  }
}
