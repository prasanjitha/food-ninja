import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_process_page_bloc.dart';
import 'signup_process_page_view.dart';

class SignupProcessPageProvider extends BlocProvider<SignupProcessPageBloc> {
  SignupProcessPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => SignupProcessPageBloc(context),
          child: const SignupProcessPageView(),
        );
}
