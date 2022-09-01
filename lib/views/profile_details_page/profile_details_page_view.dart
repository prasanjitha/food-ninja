import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../themes/custom_colors.dart';
import '../../widgets/favorite_item.dart';
import '../../widgets/popular_item.dart';
import '../../widgets/testimonials_item.dart';
import 'profile_details_page_bloc.dart';

class ProfileDetailsPageView extends StatefulWidget {
  const ProfileDetailsPageView({Key? key}) : super(key: key);

  @override
  _ProfileDetailsPageViewState createState() => _ProfileDetailsPageViewState();
}

class _ProfileDetailsPageViewState extends State<ProfileDetailsPageView> {
  @override
  Widget build(BuildContext context) {
    ProfileDetailsPageBloc bloc =
        BlocProvider.of<ProfileDetailsPageBloc>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: 1000.0,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/home/PhotoProfilenew.png',
                  ),
                ),
                Positioned(
                  top: 250.0,
                  child: Container(
                    height: 800.0,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: CustomColors.BACKGROUND),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          Image.asset('assets/home/ScroollTools.png'),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset('assets/home/MemberStatus.png'),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Anam Wusono',
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                    textAlign: TextAlign.start,
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'anamwp66@gmail.com',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Image.asset('assets/home/Editcon.png'),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 65.0,
                            width: size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: CustomColors.LIGHTGREY,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Image.asset('assets/home/VoucherIcon.png'),
                                  const SizedBox(
                                    width: 40.0,
                                  ),
                                  Text(
                                    'You Have 3 Voucher',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Favorite',
                              style: Theme.of(context).textTheme.headline3,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          FavoriteItem(
                            size: size,
                            imagePath: 'assets/home/PhotoMenu15.png',
                            title: 'Spacy fresh crab',
                            subTitle: 'Waroenk kita',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          FavoriteItem(
                            size: size,
                            imagePath: 'assets/home/PhotoMenu16.png',
                            title: 'Spacy fresh crab',
                            subTitle: 'Waroenk kita',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          FavoriteItem(
                            size: size,
                            imagePath: 'assets/home/PhotoMenu15.png',
                            title: 'Spacy fresh crab',
                            subTitle: 'Waroenk kita',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          FavoriteItem(
                            size: size,
                            imagePath: 'assets/home/PhotoMenu15.png',
                            title: 'Spacy fresh crab',
                            subTitle: 'Waroenk kita',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: size.width,
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
              Image.asset('assets/home/IconProfileActive.png'),
              Image.asset('assets/home/IconCart.png'),
              Image.asset('assets/home/IconChatWitReminder.png'),
            ],
          ),
        ),
      ),
    );
  }
}
