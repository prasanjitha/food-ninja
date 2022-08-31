import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class TestimonialsItem extends StatelessWidget {
  const TestimonialsItem({
    Key? key,
    required this.width,
    required this.imagePath,
  }) : super(key: key);

  final double width;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: CustomColors.SECONDARY,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Testimonials',
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          '12 April 2021',
                          style: Theme.of(context).textTheme.headline4,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    Image.asset('assets/home/IconStar5.png'),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'This Is great, So delicious! You Must Here, With Your family . . ',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.justify,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
