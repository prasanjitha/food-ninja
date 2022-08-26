import 'package:flutter/material.dart';

import '../themes/custom_colors.dart';

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String? sendTime;
  final String? lastMessage;
  const ChatItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.lastMessage,
    this.sendTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 80.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: CustomColors.SECONDARY)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 60.0,
                width: 60.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  width: 160.0,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      'Your Order just Arrived!Your Order just Arrived!',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: CustomColors.SECONDARY),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '20:00',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: CustomColors.SECONDARY),
            ),
          ],
        ),
      ),
    );
  }
}
