import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class PopularMenuItem extends StatelessWidget {
  const PopularMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 90.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.SURFACED)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/home/PhotoMenu.png'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Green Noddle',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Noddle Home',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: CustomColors.PRIMARY_VARIANT,
                      ),
                ),
              ],
            ),
            Image.asset('assets/home/Price.png'),
          ],
        ),
      ),
    );
  }
}
