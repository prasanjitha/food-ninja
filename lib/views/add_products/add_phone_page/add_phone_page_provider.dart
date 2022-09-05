import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_phone_page_bloc.dart';
import 'add_phone_page_view.dart';

class AddPhonePageProvider extends BlocProvider<AddPhonePageBloc> {
  AddPhonePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => AddPhonePageBloc(context),
          child: const AddPhonePageView(),
        );
}
