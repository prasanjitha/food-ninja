import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/views/add_products/add_phone_page/add_phone_page_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'add_phone_page_event.dart';
import 'add_phone_page_state.dart';
import 'package:http/http.dart' as http;

class AddPhonePageBloc extends Bloc<AddPhonePageEvent, AddPhonePageState> {
  TextEditingController addressTextEditingController = TextEditingController();
  TextEditingController discriptionTextEditingController =
      TextEditingController();
  TextEditingController priceTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController addPhoneNumberTextEditingController =
      TextEditingController();

  AddPhonePageBloc(BuildContext context)
      : super(AddPhonePageState.initialState) {
    on<InitEvent>((event, emit) async {
      http.Response response;
      List<String> message = [];
      try {
        emit(state.clone(isLoading: true));
        response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

        if (response.statusCode == 200) {
          List messages = jsonDecode(response.body);
          for (var item in messages) {
            var name = item['title'];
            message.add(name);
          }
          log(message.toString());
          emit(state.clone(isLoading: false, message: message));
        } else {
          return Future.error(response.statusCode.toString());
        }
      } catch (e) {
        return Future.error(e.toString());
      }
    });
    add(InitEvent());

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
    on<SubmitPhoneDetailsEvent>((event, emit) async {
      log(event.addPhoneNumber);
      log(event.address);
      log(event.imgUrl);
    });
  }
}
