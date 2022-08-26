import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: CustomColors.LIGHTGREEN,
              ),
        ),
      ),
    );
  }
}
