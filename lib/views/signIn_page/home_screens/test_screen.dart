import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int _currVal = 1;
  String _currText = '';
  String group1Value = '';

  List<GroupModel> _group = [
    GroupModel(
      text: "Flutter.dev",
      index: 1,
    ),
    GroupModel(
      text: "Inducesmile.com",
      index: 2,
    ),
    GroupModel(
      text: "Google.com",
      index: 3,
    ),
    GroupModel(
      text: "Yahoo.com",
      index: 4,
    ),
  ];
  var list = ['a', 'b', 'c'];
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 0,
                groupValue: group1Value,
                onChanged: (value) {
                  setState(() {
                    group1Value = value.toString();
                  });
                },
              ),
              Expanded(child: Text("Radio1")),
            ],
          ),
          SizedBox(
            height: 250.0,
            child: ListView.separated(
              itemCount: list.length,
              itemBuilder: (_, index) {
                String value = list[index];
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                        value: index,
                        groupValue: currentIndex,
                        onChanged: (flag) {
                          setState(() {
                            currentIndex = index;
                          });
                        }),
                    Text(value)
                  ],
                );
              },
              separatorBuilder: (_, index) {
                return SizedBox(
                  height: 10,
                );
              },
            ),
          ),
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: group1Value,
                onChanged: (value) {
                  setState(() {
                    group1Value = value.toString();
                  });
                },
              ),
              Expanded(child: Text("Radio2")),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: group1Value,
                onChanged: (value) {
                  setState(() {
                    group1Value = value.toString();
                  });
                },
              ),
              Expanded(child: Text("Radio3")),
            ],
          ),
          Expanded(
            child: Center(
              child: Text(_currText,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Expanded(
              child: Container(
            height: 350.0,
            child: Column(
              children: _group
                  .map((t) => RadioListTile(
                        title: Text("${t.text}"),
                        groupValue: _currVal,
                        value: t.index,
                        onChanged: (val) {
                          setState(() {
                            _currVal = t.index;
                            _currText = t.text;
                          });
                        },
                      ))
                  .toList(),
            ),
          )),
        ],
      ),
    );
  }
}

class GroupModel {
  String text;
  int index;
  GroupModel({required this.text, required this.index});
}
