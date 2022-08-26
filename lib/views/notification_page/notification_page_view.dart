import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/chat_item.dart';
import 'package:food_ninja/widgets/notification_item.dart';

import '../../widgets/back_icon_button.dart';
import '../../widgets/custom_button.dart';

class NotificationPageView extends StatefulWidget {
  const NotificationPageView({Key? key}) : super(key: key);

  @override
  _NotificationPageViewState createState() => _NotificationPageViewState();
}

class _NotificationPageViewState extends State<NotificationPageView> {
  @override
  Widget build(BuildContext context) {
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
                'Notification',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const NotificationItem(
                imagePath: 'assets/home/noti01.png',
                message: 'Your order has been taken by the driver',
                subTitle: 'Recently',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const NotificationItem(
                imagePath: 'assets/home/noti02.png',
                message: 'Topup for \$100 was successful',
                subTitle: '10.00 Am',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const NotificationItem(
                imagePath: 'assets/home/noti03.png',
                message: 'Your order has been canceled',
                subTitle: '22 Juny 2021',
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
