import 'package:flutter/material.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/image_upload_container.dart';

class ImagePreviewPageView extends StatefulWidget {
  const ImagePreviewPageView({Key? key}) : super(key: key);

  @override
  _ImagePreviewPageViewState createState() => _ImagePreviewPageViewState();
}

class _ImagePreviewPageViewState extends State<ImagePreviewPageView> {
  @override
  Widget build(BuildContext context) {
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2017/11/29/09/15/paint-2985569_960_720.jpg',
                        width: 245.0,
                        height: 245.0,
                        fit: BoxFit.cover,
                      ),
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
            // Navigator.pushNamed(
            //   context,
            //   ImagePreviewRoute,
            // );
          },
        ),
      ),
    );
  }
}
