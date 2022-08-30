import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/order_details_cart.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/edit_location_card.dart';
import '../../widgets/place_my_order_card.dart';

class EditLocationPageView extends StatefulWidget {
  const EditLocationPageView({Key? key}) : super(key: key);

  @override
  _EditLocationPageViewState createState() => _EditLocationPageViewState();
}

class _EditLocationPageViewState extends State<EditLocationPageView> {
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
                'Shipping',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const EditLocationCard(),
              const SizedBox(
                height: 10.0,
              ),
              const EditLocationCard(
                isEdit: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
