import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tea_home_page_bloc.dart';
import 'tea_home_page_view.dart';

class TeaHomePageProvider extends BlocProvider<TeaHomePageBloc> {
  TeaHomePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => TeaHomePageBloc(context),
          child: const TeaHomePageView(),
        );
}
