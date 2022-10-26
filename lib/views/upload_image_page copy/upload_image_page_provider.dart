import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'upload_image_page_bloc.dart';
import 'upload_image_page_view.dart';

class UploadImagePageProvider extends BlocProvider<UploadImagePageBloc> {
  UploadImagePageProvider({Key? key})
      : super(
          key: key,
          create: (context) => UploadImagePageBloc(context),
          child: const UploadImagePageView(),
        );
}
