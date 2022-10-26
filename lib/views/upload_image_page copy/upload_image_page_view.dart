import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/image_preview_page/image_preview_page_event.dart';
import 'package:food_ninja/views/image_preview_page/image_preview_page_view.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_event.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_state.dart';
import 'package:food_ninja/widgets/image_upload_container.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../image_preview_page/image_preview_page_bloc.dart';
import 'upload_image_page_bloc.dart';

class UploadImagePageView extends StatefulWidget {
  const UploadImagePageView({Key? key}) : super(key: key);

  @override
  _UploadImagePageViewState createState() => _UploadImagePageViewState();
}

class _UploadImagePageViewState extends State<UploadImagePageView> {
  @override
  Widget build(BuildContext context) {
    String? gender;
    UploadImagePageBloc bloc = BlocProvider.of<UploadImagePageBloc>(context);
    ImagePreviewPageBloc imagebloc =
        BlocProvider.of<ImagePreviewPageBloc>(context);
    return BlocBuilder<UploadImagePageBloc, UploadImagePageState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomBackIconButton(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Upload Your Photo Profile',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'This data will be displayed in your account profile for security',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ImageUploadContainer(
                    tap: () {
                      bloc.add(UploadImageEvent());
                    },
                    iconPath: 'assets/icons/Gallery.png',
                    text: 'Gallery',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ImageUploadContainer(
                    tap: () {},
                    iconPath: 'assets/icons/camera.png',
                    text: 'Camera',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // const Text(
                  //   "What is your gender?",
                  //   style: TextStyle(fontSize: 18),
                  // ),
                  // const Divider(),
                  // RadioListTile(
                  //   title: const Text("Male"),
                  //   value: "male",
                  //   groupValue: gender,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       gender = value.toString();
                  //     });
                  //   },
                  // ),
                  // RadioListTile(
                  //   title: const Text("Female"),
                  //   value: "female",
                  //   groupValue: gender,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       gender = value.toString();
                  //     });
                  //   },
                  // ),
                  // RadioListTile(
                  //   title: const Text("Other"),
                  //   value: "other",
                  //   groupValue: gender,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       gender = value.toString();
                  //     });
                  //   },
                  // )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
            child: CustomButton(
              text: state.isLoading ? 'Uploading' : 'Next',
              tap: () {
                imagebloc.add(GetImageUrl(imgUrl: state.imgUrl));
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => ImagePreviewPageView(
                          img: state.imgUrl,
                        ))));
                Navigator.pushNamed(
                  context,
                  ImagePreviewRoute,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
