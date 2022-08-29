import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class OrderDetailsCard extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subTitle;
  const OrderDetailsCard({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.PRIMARY_VARIANT)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(imgPath),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.SURFACE),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Image.asset('assets/home/Price.png'),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/home/IconMinus.png'),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  '1',
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Image.asset('assets/home/IconPlus.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
