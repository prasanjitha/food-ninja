import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback tap;
  final String text;
  const CustomButton({
    Key? key,
    required this.tap,
    this.text = 'Next',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: 160.0,
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [CustomColors.LIGHTGREEN, CustomColors.DARKGREEN],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: CustomColors.BACKGROUND,
                ),
          ),
        ),
      ),
    );
  }
}
