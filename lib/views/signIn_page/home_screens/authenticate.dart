import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/views/signIn_page/home_screens/home_screen.dart';
import 'package:food_ninja/views/signIn_page/sign_in_page_provider.dart';

class Authenticate extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (auth.currentUser != null) {
      return ChatHomeScreen();
    } else {
      return SignINPageProvider();
    }
  }
}
