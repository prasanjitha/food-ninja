import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_location_page_bloc.dart';
import 'edit_location_page_view.dart';

class EditLocationPageProvider extends BlocProvider<EditLocationPageBloc> {
  EditLocationPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => EditLocationPageBloc(context),
          child: const EditLocationPageView(),
        );
}
