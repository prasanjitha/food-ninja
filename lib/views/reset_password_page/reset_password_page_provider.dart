import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'reset_password_page_bloc.dart';
import 'reset_password_page_view.dart';

class ResetPasswordPageProvider extends BlocProvider<ResetPasswordPageBloc> {
  ResetPasswordPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ResetPasswordPageBloc(context),
          child: const ResetPasswordPageView(),
        );
}
