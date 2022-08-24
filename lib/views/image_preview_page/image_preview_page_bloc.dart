import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'image_preview_page_event.dart';
import 'image_preview_page_state.dart';

class ImagePreviewPageBloc
    extends Bloc<ImagePreviewPageEvent, ImagePreviewPageState> {
  ImagePreviewPageBloc(BuildContext context)
      : super(ImagePreviewPageState.initialState);
}
