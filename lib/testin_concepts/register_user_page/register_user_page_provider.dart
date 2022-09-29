import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_user_page_bloc.dart';
import 'register_user_page_view.dart';

class RegisterUserPageProvider extends BlocProvider<RegisterUserPageBloc> {
  RegisterUserPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => RegisterUserPageBloc(context),
          child: const RegisterUserPageView(),
        );
}
