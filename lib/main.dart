import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'router/router.dart' as router;
import 'themes/custom_themes.dart';
import 'views/onboarding_screens/onboarding_screen_one.dart';
import 'views/onboarding_screens/onboarding_screen_three.dart';
import 'views/onboarding_screens/onboarding_screen_two.dart';
import 'views/signIn_page/sign_in_page_provider.dart';
import 'views/sign_up_page/sign_up_page_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: router.generateRoute,
      theme: CustomThemes.lightTheme(context),
      // initialRoute: OBScreenOneRoute,
      home: SignUpPageProvider(),
    );
  }
}
