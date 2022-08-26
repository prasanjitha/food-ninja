import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'call_ringing_page_bloc.dart';
import 'call_ringing_page_view.dart';

class CallRIngingPageProvider extends BlocProvider<CallRIngingPageBloc> {
  CallRIngingPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => CallRIngingPageBloc(context),
          child: const CallRIngingPageView(),
        );
}
