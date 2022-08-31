import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_menu_page_bloc.dart';
import 'details_menu_page_view.dart';

class DetailsMenuPageProvider extends BlocProvider<DetailsMenuPageBloc> {
  DetailsMenuPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => DetailsMenuPageBloc(context),
          child: const DetailsMenuPageView(),
        );
}
