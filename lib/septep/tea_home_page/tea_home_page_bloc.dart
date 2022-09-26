import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/Post.dart';
import 'tea_home_page_event.dart';
import 'tea_home_page_state.dart';
import 'package:http/http.dart' as http;

class TeaHomePageBloc extends Bloc<TeaHomePageEvent, TeaHomePageState> {
  TeaHomePageBloc(BuildContext context) : super(TeaHomePageState.initialState) {
    on<InitEvent>((event, emit) async {
      late http.Response response;
      var url = 'https://jsonplaceholder.typicode.com/posts';
      try {
        emit(state.clone(isLoading: true));
        response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          List peopleData = jsonDecode(response.body);
          List<Post> myPost = [];
          for (var item in peopleData) {
            myPost.add(Post.fromJson(item));
          }
          log(myPost.toString());
          emit(state.clone(isLoading: false, posts: myPost));
        } else {
          emit(state.clone(isLoading: false));
        }
      } catch (e) {
        emit(state.clone(isLoading: false));
        return Future.error(e.toString());
      }
    });
    add(InitEvent());
  }
}
