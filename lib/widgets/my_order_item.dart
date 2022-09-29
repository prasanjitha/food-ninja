import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class MyOrderItem extends StatelessWidget {
  const MyOrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: CustomColors.SECONDARY,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/home/MenuPhoto1.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Waroenk kita',
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Spacy fresh crab',
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
            Container(
              width: 80.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [CustomColors.EIGHTEEN, CustomColors.DARKGREEN],
                ),
              ),
              child: Center(
                child: Text(
                  'Process',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: CustomColors.BACKGROUND,
                      ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
