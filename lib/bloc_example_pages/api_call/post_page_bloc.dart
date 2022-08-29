import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/models/Post.dart';
import 'post_page_event.dart';
import 'post_page_state.dart';
import 'package:http/http.dart' as http;

class PostPageBloc extends Bloc<PostPageEvent, PostPageState> {
  PostPageBloc(BuildContext context) : super(PostPageState.initialState) {
    on<InitEvent>((event, emit) async {
      emit(state.clone(loading: true));
      var url = 'https://jsonplaceholder.typicode.com/posts';
      late http.Response response;
      try {
        response = await http.get(Uri.parse(url));
        log('message');
        if (response.statusCode == 200) {
          List peopleData = jsonDecode(response.body);
          List<Post> myPost = [];
          for (var item in peopleData) {
            myPost.add(Post.fromJson(item));
          }
          log(myPost[0].body.toString());
          emit(state.clone(loading: false, posts: myPost));
        } else {
          log(response.statusCode.toString());
        }
      } catch (e) {
        return Future.error(e.toString());
      }
    });
    add(InitEvent());
  }
}
