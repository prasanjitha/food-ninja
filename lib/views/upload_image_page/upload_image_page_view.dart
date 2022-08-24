import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/widgets/image_upload_container.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';

class UploadImagePageView extends StatefulWidget {
  const UploadImagePageView({Key? key}) : super(key: key);

  @override
  _UploadImagePageViewState createState() => _UploadImagePageViewState();
}

class _UploadImagePageViewState extends State<UploadImagePageView> {
  @override
  Widget build(BuildContext context) {
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
              const ImageUploadContainer(
                iconPath: 'assets/icons/Gallery.png',
                text: 'Gallery',
              ),
              const SizedBox(
                height: 10.0,
              ),
              const ImageUploadContainer(
                iconPath: 'assets/icons/camera.png',
                text: 'Camera',
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
              ImagePreviewRoute,
            );
          },
        ),
      ),
    );
  }
}
