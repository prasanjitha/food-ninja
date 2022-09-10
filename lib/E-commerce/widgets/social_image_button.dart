import 'package:flutter/material.dart';

import '../../themes/custom_colors.dart';

class SocialImageButton extends StatelessWidget {
  final String iconPath;
  const SocialImageButton({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 68.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: CustomColors.BACKGROUND,
      ),
      child: Center(
        child: Image.asset(iconPath),
      ),
    );
  }
}
