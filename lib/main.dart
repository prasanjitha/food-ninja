import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/explore_menu_page/explore_menu_page_bloc.dart';
import 'package:food_ninja/views/explore_menu_page/explore_menu_page_provider.dart';
import 'package:food_ninja/views/main_home_page/main_home_page_provider.dart';
import 'package:food_ninja/views/message_screen/message_page_provider.dart';
import 'router/router.dart' as router;
import 'themes/custom_themes.dart';
import 'views/call_ringing_page/call_ringing_page_provider.dart';
import 'views/explore_menu_with_filter_page/explore_menu_with_filter_page_provider.dart';
import 'views/explore_resturant_page/explore_resturant_page_view.dart';
import 'views/explore_resturant_page_with_filter/explore_resturant_with_filter_page_provider.dart';
import 'views/finish_order_page/finish_order_page_provider.dart';
import 'views/message_details_screen/message_detail_page_provider.dart';
import 'views/onboarding_screens/onboarding_screen_one.dart';
import 'views/onboarding_screens/onboarding_screen_three.dart';
import 'views/onboarding_screens/onboarding_screen_two.dart';
import 'views/payment_method_page/payment_method_page_bloc.dart';
import 'views/reset_password_page/reset_password_page_provider.dart';
import 'views/signIn_page/sign_in_page_provider.dart';
import 'views/sign_up_page/sign_up_page_provider.dart';
import 'views/signup_process_page/signup_process_page_bloc.dart';
import 'views/signup_process_page/signup_process_page_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignupProcessPageBloc(context),
        ),
        BlocProvider(
          create: (context) => PaymentMethodPageBloc(context),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: router.generateRoute,
        theme: CustomThemes.lightTheme(context),
        // initialRoute: OBScreenOneRoute,
        home: FinishOrderPageProvider(),
      ),
    );
  }
}
