import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/bloc_example_pages/get_user_input/task_details_page/task_details_page_bloc.dart';
import 'package:food_ninja/screens/home_page/home_page_bloc.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_bloc.dart';
import 'E-commerce/screens/forgot_password_page/forgot_password_page_provider.dart';
import 'E-commerce/screens/sign_in_page/sign_in_page_provider.dart';
import 'E-commerce/screens/sign_up_page/sign_up_page_provider.dart';
import 'router/router.dart' as router;
import 'screens/add_product_page/add_new_product_page_bloc.dart';
import 'themes/custom_themes.dart';
import 'views/image_preview_page/image_preview_page_bloc.dart';
import 'views/payment_method_page/payment_method_page_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

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
        BlocProvider(
          create: (context) => AddNewProductPageBloc(context),
        ),
        BlocProvider(
          create: (context) => HomePageBloc(context),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: router.generateRoute,
        theme: CustomThemes.lightTheme(context),
        // initialRoute: OBScreenOneRoute,
        home: SignUpPageProvider(),
      ),
    );
  }
}
