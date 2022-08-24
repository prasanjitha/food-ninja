import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'image_preview_page_bloc.dart';
import 'image_preview_page_view.dart';

class ImagePreviewPageProvider extends BlocProvider<ImagePreviewPageBloc> {
  ImagePreviewPageProvider({Key? key})
      : super(
          key: key,
          create: (context) => ImagePreviewPageBloc(context),
          child: const ImagePreviewPageView(),
        );
}
