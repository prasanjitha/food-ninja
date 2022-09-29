import 'package:flutter/material.dart';

import '../../../themes/custom_colors.dart';

class CustomNextButton extends StatelessWidget {
  final VoidCallback tap;
  final double width;
  final String btnText;
  const CustomNextButton({
    Key? key,
    required this.tap,
    this.width = 200.0,
    this.btnText = 'Next',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: width,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: CustomColors.GRO_GREEN,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 10,
              color: CustomColors.GRO_GREEN.withOpacity(0.6),
            ),
          ],
        ),
        child: Center(
          child: Text(
            btnText,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: CustomColors.BACKGROUND,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
          ),
        ),
      ),
    );
  }
}
