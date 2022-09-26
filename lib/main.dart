import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_details_page/task_details_page_bloc.dart';
import 'package:food_ninja/screens/home_page/home_page_bloc.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_bloc.dart';
import 'E-commerce/screens/categories_one_page/categories_one_page_view.dart';
import 'E-commerce/screens/categories_two_page/categories_two_page_view.dart';
import 'E-commerce/screens/catelog_one_page/catelog_one_page_provider.dart';
import 'E-commerce/screens/forgot_password_page/forgot_password_page_provider.dart';
import 'E-commerce/screens/main_page/main_page_provider.dart';
import 'E-commerce/screens/main_page_one/main_page_one_view.dart';
import 'E-commerce/screens/sign_in_page/sign_in_page_provider.dart';
import 'E-commerce/screens/sign_up_page/sign_up_page_provider.dart';
import 'E-commerce/screens/tab_bar_view/main_home_page_tabBar_view.dart';
import 'grocery/sc/onboard/onboard_screen_one.dart';
import 'grocery/sc/onboard/splash_screen.dart';
import 'router/router.dart' as router;
import 'screens/add_product_page/add_new_product_page_bloc.dart';
import 'septep/tea_home_page/tea_home_page_provider.dart';
import 'themes/custom_themes.dart';
import 'views/image_preview_page/image_preview_page_bloc.dart';
import 'views/payment_method_page/payment_method_page_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => PaymentMethodPageBloc(context),
//         ),
//         BlocProvider(
//           create: (context) => TaskDetailsPageBloc(context),
//         ),
//         BlocProvider(
//           create: (context) => UploadImagePageBloc(context),
//         ),
//         BlocProvider(
//           create: (context) => ImagePreviewPageBloc(context),
//         ),
//         BlocProvider(
//           create: (context) => AddNewProductPageBloc(context),
//         ),
//         BlocProvider(
//           create: (context) => HomePageBloc(context),
//         ),
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         onGenerateRoute: router.generateRoute,
//         theme: CustomThemes.lightTheme(context),
//         // initialRoute: OBScreenOneRoute,
//         home: CatelogOnePageProvider(),
//       ),
//     );
//   }
// }

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String notificationTitle = 'No Title';
  String notificationBody = 'No Body';
  String notificationData = 'No Data';

  @override
  void initState() {
    final firebaseMessaging = FCM();
    firebaseMessaging.setNotifications();

    firebaseMessaging.streamCtlr.stream.listen(_changeData);
    firebaseMessaging.bodyCtlr.stream.listen(_changeBody);
    firebaseMessaging.titleCtlr.stream.listen(_changeTitle);

    super.initState();
  }

  _changeData(String msg) => setState(() => notificationData = msg);
  _changeBody(String msg) => setState(() => notificationBody = msg);
  _changeTitle(String msg) => setState(() => notificationTitle = msg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter Notification Details for the implement",
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 20),
            Text(
              "Notification Title:-  $notificationTitle",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Notification Body:-  $notificationBody",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
