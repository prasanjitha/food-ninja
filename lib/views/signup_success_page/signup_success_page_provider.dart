import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_success_page_bloc.dart';
import 'signup_success_page_view.dart';

class SignUpSuccessPageProvider extends BlocProvider<SignUpSuccessPageBloc> {
  SignUpSuccessPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => SignUpSuccessPageBloc(context),
          child: const SignUpSuccessPageView(),
        );
}
