import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class PaymentDetailsCard extends StatelessWidget {
  final String title;
  final String iconPath;
  final String hint;
  final VoidCallback tap;
  const PaymentDetailsCard({
    Key? key,
    required this.title,
    required this.hint,
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
        height: 110.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.SECONDARY),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: CustomColors.SECONDARY,
                        ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Edit',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: CustomColors.LIGHTGREEN,
                        ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(iconPath),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Text(
                      hint,
                      style: Theme.of(context).textTheme.headline4!,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
