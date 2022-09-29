import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: CustomColors.BACKGROUND,
        border: Border.all(
          width: 1.0,
          color: CustomColors.SURFACED,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: color,
              size: 30.0,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
