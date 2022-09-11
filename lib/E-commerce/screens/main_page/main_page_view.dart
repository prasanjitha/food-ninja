import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/ecom/BigBanner.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 536.0,
                ),
                Positioned(
                  bottom: 150.0,
                  left: 20.0,
                  child: Image.asset(
                    'assets/ecom/Fashionsale.png',
                  ),
                ),
                const Positioned(
                  bottom: 80.0,
                  left: 20.0,
                  child: CustomClickButton(),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'View more',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: CustomColors.SECONDARY,
                          letterSpacing: 1.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  CustomNewItem(
                    imagePath: 'assets/ecom/photoDress.png',
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CustomNewItem(
                    imagePath: 'assets/ecom/photoshirt.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomNewItem extends StatelessWidget {
  final String imagePath;
  const CustomNewItem({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 150.0,
          height: 280.0,
        ),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              imagePath,
              width: 150.0,
              height: 184.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 10.0,
          top: 10.0,
          child: Container(
            width: 40.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: CustomColors.ONSURFACE,
            ),
            child: Center(
              child: Text(
                'New',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: CustomColors.BACKGROUND,
                      letterSpacing: 1.0,
                    ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 0.0,
          top: 170.0,
          child: Container(
            width: 36.0,
            height: 36.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomColors.BACKGROUND,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Center(
                child: Icon(
              Icons.favorite_border,
              color: CustomColors.ERROR,
            )),
          ),
        ),
        Positioned(
          left: 0.0,
          top: 184.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.star_border_outlined,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    size: 18.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'OVS',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: CustomColors.SECONDARY,
                      letterSpacing: 1.0,
                    ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Blouse',
                style: Theme.of(context).textTheme.headline5!.copyWith(),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                '30\$',
                style: Theme.of(context).textTheme.headline5!.copyWith(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomClickButton extends StatelessWidget {
  const CustomClickButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      height: 36.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: CustomColors.ERROR,
      ),
      child: Center(
        child: Text(
          'Click',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: CustomColors.BACKGROUND,
                letterSpacing: 1.0,
              ),
        ),
      ),
    );
  }
}
