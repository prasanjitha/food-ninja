import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class PopularMenuItem extends StatelessWidget {
  final String iconPath;
  const PopularMenuItem({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 170.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: CustomColors.ONSURFACE),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(iconPath),
            Text(
              'Spacy fresh crab',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.start,
            ),
            Text(
              '12 \$',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: CustomColors.PRIMARY_VARIANT,
                  ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
