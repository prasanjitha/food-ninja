import 'package:flutter/material.dart';
import 'package:food_ninja/E-commerce/screens/forgot_password_page/forgot_password_page_provider.dart';
import 'package:food_ninja/views/main_home_page/main_home_page_provider.dart';
import '../screens/sign_in_page/sign_in_page_provider.dart';
import '../screens/sign_up_page/sign_up_page_provider.dart';
import 'routing_constant.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case EComSignUp:
      return MaterialPageRoute(
        builder: ((context) => SignUpPageProvider()),
      );
    case EComSignIn:
      return MaterialPageRoute(
        builder: ((context) => SignInPageProvider()),
      );
    case EComForgotPassword:
      return MaterialPageRoute(
        builder: ((context) => ForgotPasswordPageProvider()),
      );
    case EComMainHomePage:
      return MaterialPageRoute(
        builder: ((context) => MainHomePageProvider()),
      );
    default:
      return MaterialPageRoute(
        builder: ((context) => SignUpPageProvider()),
      );
  }
}
