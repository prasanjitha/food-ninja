import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/Api/url/db_util.dart';
import 'package:food_ninja/models/user_data.dart';
import 'signup_process_page_event.dart';
import 'signup_process_page_state.dart';
import 'package:http/http.dart' as http;

class SignupProcessPageBloc
    extends Bloc<SignupProcessPageEvent, SignupProcessPageState> {
  SignupProcessPageBloc(BuildContext context)
      : super(SignupProcessPageState.initialState) {
    on<GetUserInputEvent>((event, emit) async {
      var url = Environment.BASE_URL;
      late http.Response response;

      response = await http.post(Uri.parse(url),
          body: json.encode({
            'id': DateTime.now().toString(),
            'firstName': event.fistName,
            'lastName': event.lastName,
            'mobile': event.mobile
          }));
      log(response.body.toString());
      try {
        emit(state.clone(isLoading: true));
        List<UserData> allUsers = [];
        response = await http.get(Uri.parse(url));
        Map peopleData = jsonDecode(response.body);
        var myList = [];
        peopleData.forEach(
          (key, value) => myList.add(value),
        );
        for (var item in myList) {
          allUsers.add(UserData.fromJson(item));
        }
        log(allUsers.toString());
        emit(state.clone(users: allUsers, isLoading: false));
      } catch (e) {
        log(e.toString());
      }

      //  List<dynamic> peoples = peopleData["results"];
      // emit(state.clone(
      //     firstName: event.fistName,
      //     lastName: event.lastName,
      //     mobile: event.mobile));
    });
  }
}
