import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'upload_image_page_event.dart';
import 'upload_image_page_state.dart';

class UploadImagePageBloc
    extends Bloc<UploadImagePageEvent, UploadImagePageState> {
  UploadImagePageBloc(BuildContext context)
      : super(UploadImagePageState.initialState);
}
