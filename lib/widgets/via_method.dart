import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class ViaMethod extends StatelessWidget {
  final String iconPath;
  final String heading;
  final String title;
  const ViaMethod(
      {Key? key,
      required this.iconPath,
      required this.heading,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 106.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.ONSURFACE)),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(iconPath),
            const SizedBox(
              width: 30.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  heading,
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.start,
                ),
                Row(
                  children: [
                    Image.asset('assets/icons/dotFrame.png'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.asset('assets/icons/dotFrame.png'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.start,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
