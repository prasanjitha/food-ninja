import 'package:flutter/material.dart';

import '../../themes/custom_colors.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final VoidCallback tap;
  final double? fontSize;
  const CustomButtom({
    Key? key,
    required this.title,
    required this.tap,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: double.infinity,
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: CustomColors.ERROR,
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: CustomColors.BACKGROUND,
                  letterSpacing: 1.0,
                  fontSize: fontSize,
                ),
          ),
        ),
      ),
    );
  }
}
