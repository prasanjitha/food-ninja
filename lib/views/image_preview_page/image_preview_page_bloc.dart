import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'image_preview_page_event.dart';
import 'image_preview_page_state.dart';

class ImagePreviewPageBloc
    extends Bloc<ImagePreviewPageEvent, ImagePreviewPageState> {
  ImagePreviewPageBloc(BuildContext context)
      : super(ImagePreviewPageState.initialState) {
    List<String> img = [];
    on<GetImageUrl>((event, emit) async {
      img.add(event.imgUrl);
      emit(state.clone(loadin: true));
      log('init event call');
      log(img.toString());
      await Future.delayed(const Duration(seconds: 5));
      emit(state.clone(loadin: false, imageUrl: event.imgUrl));
    });
  }
}
