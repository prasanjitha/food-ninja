import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/bloc_example_pages/api_call/post_page_provider.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_details_page/task_details_page_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/explore_menu_page/explore_menu_page_bloc.dart';
import 'package:food_ninja/views/explore_menu_page/explore_menu_page_provider.dart';
import 'package:food_ninja/views/main_home_page/main_home_page_provider.dart';
import 'package:food_ninja/views/message_screen/message_page_provider.dart';
import 'package:food_ninja/views/signIn_page/home_screens/authenticate.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_bloc.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_provider.dart';
import 'bloc_example_pages/get_user_input/task_page_provider.dart';
import 'bloc_example_pages/get_user_input/task_page_view.dart';
import 'router/router.dart' as router;
import 'themes/custom_themes.dart';
import 'views/call_ringing_page/call_ringing_page_provider.dart';
import 'views/details_menu_page/details_menu_page_provider.dart';
import 'views/edit_location_page/edit_location_page_provider.dart';
import 'views/explore_menu_with_filter_page/explore_menu_with_filter_page_provider.dart';
import 'views/explore_resturant_page/explore_resturant_page_view.dart';
import 'views/explore_resturant_page_with_filter/explore_resturant_with_filter_page_provider.dart';
import 'views/finish_order_page/finish_order_page_provider.dart';
import 'views/get_title_page/get_title_details_page/get_title_details_page_bloc.dart';
import 'views/get_title_page/get_title_page_provider.dart';
import 'views/image_preview_page/image_preview_page_bloc.dart';
import 'views/message_details_screen/message_detail_page_provider.dart';
import 'views/notification_page/notification_page_provider.dart';
import 'views/onboarding_screens/onboarding_screen_one.dart';
import 'views/onboarding_screens/onboarding_screen_three.dart';
import 'views/onboarding_screens/onboarding_screen_two.dart';
import 'views/order_details_page/order_details_page_provider.dart';
import 'views/payment_method_page/payment_method_page_bloc.dart';
import 'views/payments_page/payments_page_provider.dart';
import 'views/product_details_page/product_details_page_provider.dart';
import 'views/profile_details_page/profile_details_page_provider.dart';
import 'views/rate_food_page/rate_food_page_provider.dart';
import 'views/reset_password_page/reset_password_page_provider.dart';
import 'views/signIn_page/home_screens/test_screen.dart';
import 'views/signIn_page/sign_in_page_provider.dart';
import 'views/sign_up_page/sign_up_page_provider.dart';
import 'views/signup_process_page/signup_process_page_bloc.dart';
import 'views/signup_process_page/signup_process_page_provider.dart';
import 'views/test_screen_new_concept/page_one.dart';
import 'views/test_screen_new_concept/page_two.dart';
import 'views/vouchar_promo_page/vouchar_promo_page_provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'views/your_orders_page/your_orders_page_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        BlocProvider(
          create: (context) => TaskDetailsPageBloc(context),
        ),
        BlocProvider(
          create: (context) => UploadImagePageBloc(context),
        ),
        BlocProvider(
          create: (context) => ImagePreviewPageBloc(context),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: router.generateRoute,
        theme: CustomThemes.lightTheme(context),
        // initialRoute: OBScreenOneRoute,
        home: TestScreen(),
      ),
    );
  }
}
