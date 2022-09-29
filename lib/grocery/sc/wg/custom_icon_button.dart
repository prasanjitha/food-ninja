import 'package:flutter/material.dart';

import '../../../themes/custom_colors.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback tap;
  final double width;
  const CustomIconButton({
    Key? key,
    required this.tap,
    this.width = 200.0,
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
          color: CustomColors.SECONDARY,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 10,
              color: CustomColors.SECONDARY.withOpacity(0.6),
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.facebook_rounded,
                color: CustomColors.BACKGROUND,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                'Sign up with facebook',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: CustomColors.BACKGROUND,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
