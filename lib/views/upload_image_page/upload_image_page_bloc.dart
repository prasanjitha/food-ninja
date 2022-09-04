import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'upload_image_page_event.dart';
import 'upload_image_page_state.dart';

class UploadImagePageBloc
    extends Bloc<UploadImagePageEvent, UploadImagePageState> {
  UploadImagePageBloc(BuildContext context)
      : super(UploadImagePageState.initialState) {
    final storageRef = FirebaseStorage.instance.ref();
    ImagePicker picker = ImagePicker();
    on<UploadImageEvent>((event, emit) async {
      var uuid = const Uuid();
      try {
        emit(state.clone(isLoading: true));
        final XFile? image =
            await picker.pickImage(source: ImageSource.gallery);
        final imgRef = storageRef.child("${uuid.v4()}.jpg");
        String url = '';
        if (image != null) {
          File imgFile = File(image.path);
          await imgRef.putFile(imgFile);
          url = await imgRef.getDownloadURL();
          log(url.toString());
          emit(state.clone(isLoading: false, imgUrl: url));
        }
      } catch (e) {
        return Future.error(e.toString());
      }
    });
  }
}
