import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class NotificationItem extends StatelessWidget {
  final String imagePath;
  final String message;
  final String subTitle;
  const NotificationItem({
    Key? key,
    required this.imagePath,
    required this.message,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 105.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.PRIMARY_VARIANT)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(imagePath),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 220.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      message,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: CustomColors.PRIMARY_VARIANT),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
