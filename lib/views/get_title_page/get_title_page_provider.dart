import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'get_title_page_bloc.dart';
import 'get_title_page_view.dart';

class GetTitlePageProvider extends BlocProvider<GetTitlePageBloc> {
  GetTitlePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => GetTitlePageBloc(context),
          child: const GetTitlePageView(),
        );
}
