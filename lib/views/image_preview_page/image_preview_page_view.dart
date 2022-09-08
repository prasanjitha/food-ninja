import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/views/image_preview_page/image_preview_page_state.dart';
import 'package:food_ninja/views/upload_image_page/upload_image_page_bloc.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/image_upload_container.dart';
import 'image_preview_page_bloc.dart';

class ImagePreviewPageView extends StatefulWidget {
  final String? img;
  const ImagePreviewPageView({Key? key, this.img}) : super(key: key);

  @override
  _ImagePreviewPageViewState createState() => _ImagePreviewPageViewState();
}

class _ImagePreviewPageViewState extends State<ImagePreviewPageView> {
  @override
  Widget build(BuildContext context) {
    ImagePreviewPageBloc uploadImgBloc =
        BlocProvider.of<ImagePreviewPageBloc>(context);

    log(uploadImgBloc.state.imageUrl);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomBackIconButton(),
              ),
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
              Stack(
                children: [
                  Container(
                    width: 245.0,
                    height: 245.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            width: 1, color: CustomColors.ONSURFACE)),
                    child: BlocBuilder<ImagePreviewPageBloc,
                        ImagePreviewPageState>(
                      builder: (context, state) {
                        if (state.loadin) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        }
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2014/07/31/22/50/photographer-407068_960_720.jpg',
                            width: 245.0,
                            height: 245.0,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: CustomColors.BACKGROUND),
                        child: const Icon(
                          Icons.close,
                          color: CustomColors.ONSURFACE,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: CustomButton(
          text: 'Next',
          tap: () {
            Navigator.pushNamed(
              context,
              SetLocationRoute,
            );
          },
        ),
      ),
    );
  }
}
