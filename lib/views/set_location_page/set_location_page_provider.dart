import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'set_location_page_bloc.dart';
import 'set_location_page_view.dart';

class SetLocationPageProvider extends BlocProvider<SetLocationPageBloc> {
  SetLocationPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => SetLocationPageBloc(context),
          child: const SetLocationPageView(),
        );
}
