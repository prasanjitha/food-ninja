import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/order_details_cart.dart';
import 'package:food_ninja/widgets/payment_details_card.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/place_my_order_card.dart';

class PaymentsPageView extends StatefulWidget {
  const PaymentsPageView({Key? key}) : super(key: key);

  @override
  _PaymentsPageViewState createState() => _PaymentsPageViewState();
}

class _PaymentsPageViewState extends State<PaymentsPageView> {
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
              const PaymentDetailsCard(
                title: 'Deliver To',
                iconPath: 'assets/home/IconLocation.png',
                hint: '4517 Washington Ave. Manchester, Kentucky 39495',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const PaymentDetailsCard(
                title: 'Payment Method',
                iconPath: 'assets/icons/paypal.png',
                hint: '4517 9495 3476 ....',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const PlaceMyOrderCard(),
            ],
          ),
        ),
      ),
    );
  }
}
