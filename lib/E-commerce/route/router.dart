import 'package:flutter/material.dart';
import 'package:food_ninja/E-commerce/screens/home_page/sign_up_page_provider.dart';
import 'routing_constant.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case EComSignUp:
      return MaterialPageRoute(
        builder: ((context) => SignUpPageProvider()),
      );

    default:
      return MaterialPageRoute(
        builder: ((context) => SignUpPageProvider()),
      );
  }
}
