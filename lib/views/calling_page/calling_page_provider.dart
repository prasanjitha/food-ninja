import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'calling_page_bloc.dart';
import 'calling_page_view.dart';

class CallingPageProvider extends BlocProvider<CallingPageBloc> {
  CallingPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => CallingPageBloc(context),
          child: const CallingPageView(),
        );
}
