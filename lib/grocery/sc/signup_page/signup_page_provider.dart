import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_page_bloc.dart';
import 'signup_page_view.dart';

class SignUpPageProvider extends BlocProvider<SignUpPageBloc> {
  SignUpPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => SignUpPageBloc(context),
          child: const SignUpPageView(),
        );
}
