import 'package:flutter/material.dart';
import 'package:food_ninja/E-commerce/screens/forgot_password_page/forgot_password_page_provider.dart';
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
    default:
      return MaterialPageRoute(
        builder: ((context) => SignUpPageProvider()),
      );
  }
}
