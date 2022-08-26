import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/explore_resturant_page/explore_resturant_page_provider.dart';
import 'package:food_ninja/views/filter_page/filter_page_provider.dart';
import 'package:food_ninja/views/image_preview_page/image_preview_page_provider.dart';
import 'package:food_ninja/views/main_home_page/main_home_page_provider.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_one.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_three.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_two.dart';
import 'package:food_ninja/views/onboarding_screens/success_notification_screen.dart';
import 'package:food_ninja/views/payment_method_page/payment_method_page_provider.dart';
import 'package:food_ninja/views/reset_password_page/reset_password_page_provider.dart';
import 'package:food_ninja/views/set_location_page/set_location_page_provider.dart';
import 'package:food_ninja/views/signIn_page/sign_in_page_provider.dart';
import 'package:food_ninja/views/signup_process_page/signup_process_page_provider.dart';
import 'package:food_ninja/views/signup_success_page/signup_success_page_provider.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_provider.dart';
import 'package:food_ninja/views/via_method_page/via_method_page_bloc.dart';
import 'package:food_ninja/views/via_method_page/via_method_page_provider.dart';

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
    case SetLocationRoute:
      return MaterialPageRoute(
        builder: ((context) => SetLocationPageProvider()),
      );
    case SignupSuccessRoute:
      return MaterialPageRoute(
        builder: ((context) => SignUpSuccessPageProvider()),
      );
    case VIaMethodRoute:
      return MaterialPageRoute(
        builder: ((context) => ViaMethodPageProvider()),
      );
    case ResetPasswordRoute:
      return MaterialPageRoute(
        builder: ((context) => ResetPasswordPageProvider()),
      );
    case SuccessNotificationRoute:
      return MaterialPageRoute(
        builder: ((context) => const SuccessNotificationScreen()),
      );
    case MainHomePageRoute:
      return MaterialPageRoute(
        builder: ((context) => MainHomePageProvider()),
      );
    case ExploreRestturantPageRoute:
      return MaterialPageRoute(
        builder: ((context) => ExploreResturantPageProvider()),
      );
    case FilterRoute:
      return MaterialPageRoute(
        builder: ((context) => FilterPageProvider()),
      );
    default:
      return MaterialPageRoute(
        builder: ((context) => const OBScreenOne()),
      );
  }
}
