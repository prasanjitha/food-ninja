import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../views/add_products/add_phone_page/add_phone_page_view.dart';
import '../home_page/home_page_bloc.dart';
import '../home_page/home_page_event.dart';
import '../home_page/home_page_view.dart';
import 'add_new_product_page_bloc.dart';

class AddNewProductPageView extends StatefulWidget {
  const AddNewProductPageView({Key? key}) : super(key: key);

  @override
  _AddNewProductPageViewState createState() => _AddNewProductPageViewState();
}

class _AddNewProductPageViewState extends State<AddNewProductPageView> {
  @override
  Widget build(BuildContext context) {
    AddNewProductPageBloc bloc =
        BlocProvider.of<AddNewProductPageBloc>(context);

    HomePageBloc homeBloc = BlocProvider.of<HomePageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: bloc.nameTextEditingController,
              decoration: const InputDecoration(
                hintText: 'Product Name',
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: bloc.priceTextEditingController,
              decoration: const InputDecoration(
                hintText: 'Price',
                contentPadding: EdgeInsets.all(10.0),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: AddButton(
              tap: () {
                // bloc.add(AddBroductDetailsEvent(
                //   name: bloc.nameTextEditingController.text.trim(),
                //   price: bloc.priceTextEditingController.text.trim(),
                // ));
                homeBloc.add(GetProductDetailsEvent(
                  name: bloc.nameTextEditingController.text.trim(),
                  price: bloc.priceTextEditingController.text.trim(),
                ));
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BlocProvider.value(
                      value: homeBloc,
                      child: const HomePageView(),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
