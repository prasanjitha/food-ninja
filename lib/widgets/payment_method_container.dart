import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class PaymentMethodContainer extends StatelessWidget {
  final String iconPath;
  final VoidCallback tap;
  const PaymentMethodContainer({
    Key? key,
    required this.iconPath,
    required this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: tap,
      child: Container(
        width: width,
        height: 75.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1, color: CustomColors.ONSURFACE)),
        child: Center(
          child: Image.asset(
            iconPath,
          ),
        ),
      ),
    );
  }
}
