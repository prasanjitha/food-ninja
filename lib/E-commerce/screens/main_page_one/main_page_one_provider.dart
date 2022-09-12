import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_page_one_bloc.dart';
import 'main_page_one_view.dart';

class MainPageOneProvider extends BlocProvider<MainPageOneBloc> {
  MainPageOneProvider({Key? key})
      : super(
          key: key,
          create: (context) => MainPageOneBloc(context),
          child: const MainPageOneView(),
        );
}
