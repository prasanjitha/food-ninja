import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class PlaceMyOrderCard extends StatelessWidget {
  const PlaceMyOrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [CustomColors.LIGHTGREEN, CustomColors.DARKGREEN],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub-Total',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '120 \$',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Charge',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '20 \$',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '10 \$',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
                Text(
                  '150 \$',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: CustomColors.BACKGROUND),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: width,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: CustomColors.BACKGROUND,
              ),
              child: Center(
                child: Text(
                  'Place My Order',
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.start,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
