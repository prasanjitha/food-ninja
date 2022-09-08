import 'package:flutter/material.dart';
import 'package:food_ninja/router/routing_constant.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/widgets/chat_item.dart';

import '../../data/data.dart';
import '../../widgets/back_icon_button.dart';
import '../../widgets/bottom_message_send_bar.dart';

class MessageDetailsPageView extends StatefulWidget {
  const MessageDetailsPageView({Key? key}) : super(key: key);

  @override
  _MessageDetailsPageViewState createState() => _MessageDetailsPageViewState();
}

class _MessageDetailsPageViewState extends State<MessageDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(),
      // body: SingleChildScrollView(
      //   reverse: true,
      //   child: ListView.builder(
      //     itemCount: messages.length,
      //     shrinkWrap: true,
      //     padding: const EdgeInsets.only(top: 10, bottom: 10),
      //     physics: const NeverScrollableScrollPhysics(),
      //     itemBuilder: (context, index) {
      //       return Container(
      //         padding: const EdgeInsets.only(
      //             left: 14, right: 14, top: 10, bottom: 10),
      //         child: Align(
      //           alignment: (messages[index].messageType == "receiver"
      //               ? Alignment.topLeft
      //               : Alignment.topRight),
      //           child: Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(20),
      //               color: (messages[index].messageType == "receiver"
      //                   ? CustomColors.MORELIGHTGREY
      //                   : CustomColors.LIGHTGREEN),
      //             ),
      //             padding: const EdgeInsets.all(16),
      //             child: Text(
      //               messages[index].messageContent,
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .subtitle1!
      //                   .copyWith(color: CustomColors.ONSURFACE),
      //             ),
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
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
              Container(
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
                          "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_960_720.jpg",
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
                            "Nethuki Amanda",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Image.asset('assets/home/OnlineNotification.png'),
                        ],
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              CallRingingRoute,
                            );
                          },
                          child: Image.asset('assets/home/CallLogo.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 500.0,
                child: SingleChildScrollView(
                  reverse: true,
                  child: ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(
                            left: 14, right: 14, top: 10, bottom: 10),
                        child: Align(
                          alignment: (messages[index].messageType == "receiver"
                              ? Alignment.topLeft
                              : Alignment.topRight),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: (messages[index].messageType == "receiver"
                                  ? CustomColors.MORELIGHTGREY
                                  : CustomColors.LIGHTGREEN),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              messages[index].messageContent,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: CustomColors.ONSURFACE),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomMessageSendBar(),
    );
  }
}
