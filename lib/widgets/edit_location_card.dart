import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class EditLocationCard extends StatelessWidget {
  final bool isEdit;
  const EditLocationCard({
    Key? key,
    this.isEdit = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: isEdit ? 130.0 : 110.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.SECONDARY)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Order Location',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: CustomColors.PRIMARY_VARIANT,
                  ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/home/IconLocation.png'),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Text(
                    '4517 Washington Ave. Manchester, Kentucky 39495',
                    style: Theme.of(context).textTheme.headline4!,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            isEdit
                ? Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'set location',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: CustomColors.EIGHTEEN,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
