import 'package:flutter/material.dart';

import '../../themes/custom_colors.dart';

class TopCatlogItem extends StatelessWidget {
  final String title;
  const TopCatlogItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: CustomColors.SURFACED,
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: CustomColors.BACKGROUND,
              ),
        ),
      ),
    );
  }
}
