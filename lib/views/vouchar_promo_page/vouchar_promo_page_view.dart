import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/chat_item.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';

class VoucharPromoPageView extends StatefulWidget {
  const VoucharPromoPageView({Key? key}) : super(key: key);

  @override
  _VoucharPromoPageViewState createState() => _VoucharPromoPageViewState();
}

class _VoucharPromoPageViewState extends State<VoucharPromoPageView> {
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
                'Voucher Promo',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/home/VoucherPromo.png'),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/home/VoucherPromo1.png'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: CustomButton(
          text: 'Check out',
          width: width,
          tap: () {
            // Navigator.pushNamed(
            //   context,
            //   SuccessNotificationRoute,
            // );
          },
        ),
      ),
    );
  }
}
