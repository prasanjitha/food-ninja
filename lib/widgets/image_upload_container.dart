import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class ImageUploadContainer extends StatelessWidget {
  final String iconPath;
  final VoidCallback tap;
  final String text;
  const ImageUploadContainer(
      {Key? key, required this.iconPath, required this.text, required this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: tap,
      child: Container(
        width: width,
        height: 130.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1, color: CustomColors.SURFACED)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
