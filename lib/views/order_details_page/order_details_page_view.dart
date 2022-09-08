import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/order_details_cart.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/place_my_order_card.dart';

class OrdrDetailsPageView extends StatefulWidget {
  const OrdrDetailsPageView({Key? key}) : super(key: key);

  @override
  _OrdrDetailsPageViewState createState() => _OrdrDetailsPageViewState();
}

class _OrdrDetailsPageViewState extends State<OrdrDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomBackIconButton(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Order details',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const OrderDetailsCard(
                imgPath: 'assets/home/MenuPhoto.png',
                subTitle: 'Waroenk kita',
                title: 'Spacy fresh crab',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const OrderDetailsCard(
                imgPath: 'assets/home/MenuPhoto1.png',
                subTitle: 'Waroenk kita',
                title: 'Spacy fresh crab',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const OrderDetailsCard(
                imgPath: 'assets/home/MenuPhoto2.png',
                subTitle: 'Waroenk kita',
                title: 'Spacy fresh crab',
              ),
              const SizedBox(
                height: 20.0,
              ),
              PlaceMyOrderCard(
                tap: () {
                  Navigator.pushNamed(
                    context,
                    PaymentsRoute,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
