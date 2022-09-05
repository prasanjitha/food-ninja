import 'package:flutter/material.dart';

class AddPhonePageView extends StatefulWidget {
  const AddPhonePageView({Key? key}) : super(key: key);

  @override
  _AddPhonePageViewState createState() => _AddPhonePageViewState();
}

class _AddPhonePageViewState extends State<AddPhonePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AddPhone"),
      ),
      body: const Center(child: Text("AddPhone Page View")),
    );
  }
}
