import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_new_product_page_bloc.dart';
import 'add_new_product_page_view.dart';

class AddNewProductPageProvider extends BlocProvider<AddNewProductPageBloc> {
  AddNewProductPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => AddNewProductPageBloc(context),
          child: const AddNewProductPageView(),
        );
}
