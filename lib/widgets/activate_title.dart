import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class ActivateTitle extends StatelessWidget {
  final String title;
  const ActivateTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/icons/CheckIcon.png'),
        const SizedBox(
          width: 20.0,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: CustomColors.SURFACED),
        ),
      ],
    );
  }
}
