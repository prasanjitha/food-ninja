import 'package:flutter/material.dart';

class PaymentMethodPageView extends StatefulWidget {
  const PaymentMethodPageView({Key? key}) : super(key: key);

  @override
  _PaymentMethodPageViewState createState() => _PaymentMethodPageViewState();
}

class _PaymentMethodPageViewState extends State<PaymentMethodPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(child: Text("payment  Page View")),
    );
  }
}
