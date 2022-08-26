import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class FilterIcon extends StatelessWidget {
  final String title;
  final bool iconClose;
  const FilterIcon({
    Key? key,
    required this.title,
    this.iconClose = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: CustomColors.LIGHTPINK),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: CustomColors.BROWN),
              ),
              iconClose
                  ? Row(
                      children: const [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.close,
                          color: CustomColors.ORANGE,
                        )
                      ],
                    )
                  : Row(),
            ],
          ),
        ),
      ),
    );
  }
}
