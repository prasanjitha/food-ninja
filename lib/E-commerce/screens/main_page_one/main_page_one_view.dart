import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';

class MainPageOneView extends StatefulWidget {
  const MainPageOneView({Key? key}) : super(key: key);

  @override
  _MainPageOneViewState createState() => _MainPageOneViewState();
}

class _MainPageOneViewState extends State<MainPageOneView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/ecom/Vectorn.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 360.0,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/ecom/Vectort.png',
                      fit: BoxFit.cover,
                      width: 180.0,
                      height: 180.0,
                    ),
                    Image.asset(
                      'assets/ecom/Vectorb.png',
                      fit: BoxFit.cover,
                      width: 180.0,
                      height: 180.0,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/ecom/imagey.png',
                  fit: BoxFit.cover,
                  width: 180.0,
                  height: 360.0,
                ),
              ],
            ),
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
