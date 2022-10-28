import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../signIn_page/home_screens/home_screen.dart';
import 'message_page_event.dart';
import 'message_page_state.dart';

class MessagePageBloc extends Bloc<MessagePageEvent, MessagePageState> {
  MessagePageBloc(BuildContext context) : super(MessagePageState.initialState) {
    Future<User?> login(
        BuildContext context, String email, String password) async {
      FirebaseAuth auth = FirebaseAuth.instance;
      try {
        User? user = (await auth.signInWithEmailAndPassword(
                email: email, password: password))
            .user;

        if (user != null) {
          log('success');
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => ChatHomeScreen()),
            ),
          );
          return user;
        } else {
          log('un success');
          return user;
        }
      } catch (e) {
        return Future.error(e.toString());
      }
    }
  }
}
