import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class UnorderedListItem extends StatelessWidget {
  final String title;
  const UnorderedListItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '*',
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.start,
          maxLines: 4,
        ),
        const SizedBox(
          width: 20.0,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: CustomColors.SECONDARY,
              ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
