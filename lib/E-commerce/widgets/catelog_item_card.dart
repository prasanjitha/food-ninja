import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../themes/custom_colors.dart';
import '../screens/catelog_one_page/catelog_one_page_bloc.dart';
import '../screens/catelog_one_page/catelog_one_page_event.dart';
import '../screens/catelog_one_page/catelog_one_page_state.dart';

class CatelogItemCard extends StatelessWidget {
  const CatelogItemCard({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  final CatelogOnePageBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 120.0,
        ),
        Positioned(
          child: Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: CustomColors.BACKGROUND,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/07/31/11/21/people-2557396_960_720.jpg',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pullover',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      'Mango',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: CustomColors.SECONDARY,
                          ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.star_outline,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '(3)',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
                                    color: CustomColors.SECONDARY,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      '51\$',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            right: 0.0,
            bottom: 10.0,
            child: InkWell(
              onTap: () {
                bloc.add(ChangeFavoriteIconStateEvent(isFav: bloc.state.init));
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors.BACKGROUND,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: BlocBuilder<CatelogOnePageBloc, CatelogOnePageState>(
                  builder: (context, state) {
                    return Center(
                      child: Icon(
                        Icons.favorite,
                        color: state.init
                            ? CustomColors.SECONDARY
                            : CustomColors.ERROR,
                        size: 20.0,
                      ),
                    );
                  },
                ),
              ),
            ))
      ],
    );
  }
}
