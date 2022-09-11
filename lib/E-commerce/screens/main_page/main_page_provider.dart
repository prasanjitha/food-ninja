import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_page_bloc.dart';
import 'main_page_view.dart';

class MainPageProvider extends BlocProvider<MainPageBloc> {
  MainPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => MainPageBloc(context),
          child: const MainPageView(),
        );
}
