import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final Size size;
  final String imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.SECONDARY)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imagePath),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.start,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.SECONDARY),
                  textAlign: TextAlign.start,
                ),
                Image.asset('assets/home/Price.png'),
              ],
            ),
            Image.asset('assets/home/CTAButton.png'),
          ],
        ),
      ),
    );
  }
}
