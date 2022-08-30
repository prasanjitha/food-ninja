import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/call_ringing_page/call_ringing_page_provider.dart';
import 'package:food_ninja/views/calling_page/calling_page_provider.dart';
import 'package:food_ninja/views/edit_location_page/edit_location_page_provider.dart';
import 'package:food_ninja/views/explore_menu_page/explore_menu_page_provider.dart';
import 'package:food_ninja/views/explore_menu_with_filter_page/explore_menu_with_filter_page_provider.dart';
import 'package:food_ninja/views/explore_resturant_page/explore_resturant_page_provider.dart';
import 'package:food_ninja/views/explore_resturant_page_with_filter/explore_resturant_with_filter_page_provider.dart';
import 'package:food_ninja/views/filter_page/filter_page_provider.dart';
import 'package:food_ninja/views/finish_order_page/finish_order_page_provider.dart';
import 'package:food_ninja/views/image_preview_page/image_preview_page_provider.dart';
import 'package:food_ninja/views/main_home_page/main_home_page_provider.dart';
import 'package:food_ninja/views/message_details_screen/message_detail_page_provider.dart';
import 'package:food_ninja/views/message_screen/message_page_provider.dart';
import 'package:food_ninja/views/notification_page/notification_page_provider.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_one.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_three.dart';
import 'package:food_ninja/views/onboarding_screens/onboarding_screen_two.dart';
import 'package:food_ninja/views/onboarding_screens/success_notification_screen.dart';
import 'package:food_ninja/views/payment_method_page/payment_method_page_provider.dart';
import 'package:food_ninja/views/payments_page/payments_page_provider.dart';
import 'package:food_ninja/views/rate_food_page/rate_food_page_provider.dart';
import 'package:food_ninja/views/rate_resturant_page/rate_resturant_page_provider.dart';
import 'package:food_ninja/views/reset_password_page/reset_password_page_provider.dart';
import 'package:food_ninja/views/set_location_page/set_location_page_provider.dart';
import 'package:food_ninja/views/signIn_page/sign_in_page_provider.dart';
import 'package:food_ninja/views/signup_process_page/signup_process_page_provider.dart';
import 'package:food_ninja/views/signup_success_page/signup_success_page_provider.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_provider.dart';
import 'package:food_ninja/views/via_method_page/via_method_page_bloc.dart';
import 'package:food_ninja/views/via_method_page/via_method_page_provider.dart';
import 'package:food_ninja/views/vouchar_promo_page/vouchar_promo_page_provider.dart';
import 'package:food_ninja/views/your_orders_page/your_orders_page_provider.dart';

import '../views/order_details_page/order_details_page_provider.dart';
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
    case ExploreMenuRoute:
      return MaterialPageRoute(
        builder: ((context) => ExploreMenuPageProvider()),
      );
    case ExploreRestturantWithFilterPageRoute:
      return MaterialPageRoute(
        builder: ((context) => ExploreResturantWithFilterPageProvider()),
      );
    case ExploreMenuWithFilterRoute:
      return MaterialPageRoute(
        builder: ((context) => ExploreMenuWithFilterPageProvider()),
      );
    case MessageRoute:
      return MaterialPageRoute(
        builder: ((context) => MessagePageProvider()),
      );
    case MessageDetailsRoute:
      return MaterialPageRoute(
        builder: ((context) => MessageDetailsPageProvider()),
      );
    case CallRingingRoute:
      return MaterialPageRoute(
        builder: ((context) => CallRIngingPageProvider()),
      );
    case CallingRoute:
      return MaterialPageRoute(
        builder: ((context) => CallingPageProvider()),
      );
    case FinishOrderRoute:
      return MaterialPageRoute(
        builder: ((context) => FinishOrderPageProvider()),
      );
    case RateFoodRoute:
      return MaterialPageRoute(
        builder: ((context) => RateFoodPageProvider()),
      );
    case RateResturatRoute:
      return MaterialPageRoute(
        builder: ((context) => RateResturantPageProvider()),
      );
    case VoucharPromoRoute:
      return MaterialPageRoute(
        builder: ((context) => VoucharPromoPageProvider()),
      );
    case notificationRoute:
      return MaterialPageRoute(
        builder: ((context) => NotificationPageProvider()),
      );
    case OrderDetailsRoute:
      return MaterialPageRoute(
        builder: ((context) => OrdrDetailsPageProvider()),
      );
    case PaymentsRoute:
      return MaterialPageRoute(
        builder: ((context) => PaymentsPageProvider()),
      );
    case EditLocationRoute:
      return MaterialPageRoute(
        builder: ((context) => EditLocationPageProvider()),
      );
    case YourOrdersRoute:
      return MaterialPageRoute(
        builder: ((context) => YourOrdersPageProvider()),
      );
    default:
      return MaterialPageRoute(
        builder: ((context) => const OBScreenOne()),
      );
  }
}
