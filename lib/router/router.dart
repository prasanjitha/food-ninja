import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/image_preview_page/image_preview_page_provider.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_one.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_three.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_two.dart';
import 'package:food_ninja/views/payment_method_page/payment_method_page_provider.dart';
import 'package:food_ninja/views/signIn_page/sign_in_page_provider.dart';
import 'package:food_ninja/views/signup_process_page/signup_process_page_provider.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_provider.dart';

import '../views/sign_up_page/sign_up_page_provider.dart';

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
      return MaterialPageRoute(
        builder: ((context) => OBScreenThree()),
      );
    case SignInRoute:
      return MaterialPageRoute(
        builder: ((context) => SignINPageProvider()),
      );
    case SignUpRoute:
      return MaterialPageRoute(
        builder: ((context) => SignUpPageProvider()),
      );
    case SignupProcessRoute:
      return MaterialPageRoute(
        builder: ((context) => SignupProcessPageProvider()),
      );
    case PaymentMethodRoute:
      return MaterialPageRoute(
        builder: ((context) => PaymentMethodPageProvider()),
      );
    case uploadImageRoute:
      return MaterialPageRoute(
        builder: ((context) => UploadImagePageProvider()),
      );
    case ImagePreviewRoute:
      return MaterialPageRoute(
        builder: ((context) => ImagePreviewPageProvider()),
      );
    default:
      return MaterialPageRoute(
        builder: ((context) => const OBScreenOne()),
      );
  }
}
