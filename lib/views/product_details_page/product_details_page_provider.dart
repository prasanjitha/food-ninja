import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'product_details_page_bloc.dart';
import 'product_details_page_view.dart';

class ProductDetailsPageProvider extends BlocProvider<ProductDetailsPageBloc> {
  ProductDetailsPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ProductDetailsPageBloc(context),
          child: const ProductDetailsPageView(),
        );
}
