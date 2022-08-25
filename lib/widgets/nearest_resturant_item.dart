import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class NearestResturantItem extends StatelessWidget {
  final String imagePath;
  final String title;
  const NearestResturantItem({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 186.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.ONSURFACE)),
      child: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Image.asset(
            imagePath,
            height: 70.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            '12 Mins',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: CustomColors.PRIMARY_VARIANT),
          ),
        ],
      ),
    );
  }
}
