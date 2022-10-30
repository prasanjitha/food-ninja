import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/chat_item.dart';

import '../../widgets/back_icon_button.dart';

class MessagePageView extends StatefulWidget {
  const MessagePageView({Key? key}) : super(key: key);

  @override
  _MessagePageViewState createState() => _MessagePageViewState();
}

class _MessagePageViewState extends State<MessagePageView> {
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
                'Chat',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    MessageDetailsRoute,
                  );
                },
                child: const ChatItem(
                  imageUrl:
                      "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg",
                  name: 'Anamwp',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ChatItem(
                imageUrl:
                    "https://cdn.pixabay.com/photo/2018/07/21/03/55/woman-3551832_960_720.jpg",
                name: 'Anamwp',
              ),
              const SizedBox(
                height: 20.0,
              ),
              const ChatItem(
                imageUrl:
                    "https://cdn.pixabay.com/photo/2017/09/01/21/53/sunglasses-2705642_960_720.jpg",
                name: 'Anamwp',
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 80.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/home/Home.png'),
              Image.asset('assets/home/IconProfile.png'),
              Image.asset('assets/home/IconCart.png'),
              Image.asset('assets/home/IconChatActive.png'),
            ],
          ),
        ),
      ),
    );
  }
}
