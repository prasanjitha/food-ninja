import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_one.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_three.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_two.dart';
import 'package:food_ninja/views/signIn_page/sign_in_page_provider.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OBScreenOneRoute:
      return MaterialPageRoute(
        builder: ((context) => const OBScreenOne()),
      );
    case OBScreenTwoRoute:
      return MaterialPageRoute(
        builder: ((context) => const OBScreenTwo()),
      );
    case OBScreenThreeRoute:
      var argument = settings.arguments;
      return MaterialPageRoute(
        builder: ((context) => OBScreenThree(
              argument: argument.toString(),
            )),
      );
    case SignInRoute:
      return MaterialPageRoute(
        builder: ((context) => SignINPageProvider()),
      );
    default:
      return MaterialPageRoute(
        builder: ((context) => const OBScreenOne()),
      );
  }
}
