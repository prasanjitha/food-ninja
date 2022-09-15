import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'catelog_one_page_bloc.dart';
import 'catelog_one_page_view.dart';

class CatelogOnePageProvider extends BlocProvider<CatelogOnePageBloc> {
  CatelogOnePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => CatelogOnePageBloc(context),
          child: const CatelogOnePageView(),
        );
}
