import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

import '../../widgets/popular_menu_item.dart';
import '../../widgets/testimonials_item.dart';

class ProductDetailsPageView extends StatefulWidget {
  const ProductDetailsPageView({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageViewState createState() => _ProductDetailsPageViewState();
}

class _ProductDetailsPageViewState extends State<ProductDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: width,
                  height: 1000.0,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/home/PhotoRestaurant.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 250.0,
                  child: Container(
                    height: 800.0,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: CustomColors.BACKGROUND),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Image.asset('assets/home/ScroollTools.png'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/home/PopularStatus.png'),
                              const SizedBox(
                                width: 100.0,
                              ),
                              Image.asset('assets/home/IconLocations.png'),
                              Image.asset('assets/home/IconLove.png'),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Wijie Bar and Resto',
                              style: Theme.of(context).textTheme.headline3,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset('assets/home/Iconmap-pin.png'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '19 Km',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: CustomColors.SECONDARY),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                width: 30.0,
                              ),
                              Image.asset('assets/home/IconStar.png'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                '4,8 Rating',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: CustomColors.SECONDARY),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: CustomColors.SECONDARY,
                                    ),
                            textAlign: TextAlign.start,
                            maxLines: 4,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Menu',
                                style: Theme.of(context).textTheme.headline3,
                                textAlign: TextAlign.start,
                              ),
                              Text(
                                'View All',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(
                                      color: CustomColors.ORANGE,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: const [
                              PopularMenuItem(
                                iconPath: 'assets/home/image34.png',
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              PopularMenuItem(
                                iconPath: 'assets/home/image32.png',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Testimonials',
                              style: Theme.of(context).textTheme.headline4,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TestimonialsItem(
                            width: width,
                            imagePath: 'assets/home/PhotoProfile11.png',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TestimonialsItem(
                            width: width,
                            imagePath: 'assets/home/PhotoProfile10.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
