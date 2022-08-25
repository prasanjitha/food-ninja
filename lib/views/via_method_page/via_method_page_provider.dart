import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'via_method_page_bloc.dart';
import 'via_method_page_view.dart';

class ViaMethodPageProvider extends BlocProvider<ViaMethodPageBloc> {
  ViaMethodPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ViaMethodPageBloc(context),
          child: const ViaMethodPageView(),
        );
}
