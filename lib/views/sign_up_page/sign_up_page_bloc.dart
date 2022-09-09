import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'sign_up_page_event.dart';
import 'sign_up_page_state.dart';

class SignUpPageBloc extends Bloc<SignUpPageEvent, SignUpPageState> {
  SignUpPageBloc(BuildContext context) : super(SignUpPageState.initialState) {
    on<SubmitUserDetaEvent>((event, emit) async {
      createUser(event.name, event.email, event.password);
    });
  }

  Future<User?> createUser(String name, String email, String password) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      User? user = (await auth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;
      if (user != null) {
        user.updateDisplayName(name);
        await firestore.collection('users').doc(auth.currentUser!.uid).set({
          "name": name,
          "email": email,
          "status": "Unavalible",
          "uid": auth.currentUser!.uid
        });
        log('message');
        return user;
      } else {
        return user;
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
