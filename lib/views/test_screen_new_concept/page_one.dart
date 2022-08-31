import 'package:flutter/material.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/views/test_screen_new_concept/page_two.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final List products = ['item1', 'item2', 'item3', 'item4'];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 50.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedItem = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index],
                          style: selectedItem == index
                              ? Theme.of(context).textTheme.headline3
                              : Theme.of(context).textTheme.headline3!.copyWith(
                                    color: CustomColors.ORANGE,
                                  ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        selectedItem == index
                            ? Container(
                                width: 58,
                                height: 5,
                                color: CustomColors.SECONDARY,
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          NewWidget(
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => PageTwo()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final VoidCallback? press;
  const NewWidget({
    Key? key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: 100,
        height: 200,
        child: Hero(
          tag: 'img01',
          child: Image.network(
              'https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121_960_720.jpg'),
        ),
      ),
    );
  }
}
