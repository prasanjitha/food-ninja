import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_in_page_bloc.dart';
import 'sign_in_page_view.dart';

class SignINPageProvider extends BlocProvider<SignINPageBloc> {
  SignINPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => SignINPageBloc(context),
          child: const SignINPageView(),
        );
}
