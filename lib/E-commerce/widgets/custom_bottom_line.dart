import 'package:flutter/material.dart';

import '../../themes/custom_colors.dart';

class CustomBottomLine extends StatelessWidget {
  const CustomBottomLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
      child: Container(
        height: 6.0,
        color: CustomColors.ONSURFACE,
      ),
    );
  }
}
