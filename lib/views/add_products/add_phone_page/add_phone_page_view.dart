// ignore_for_file: sort_child_properties_last

import 'dart:developer';

import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ninja/themes/custom_colors.dart';
import 'package:food_ninja/views/add_products/add_phone_page/add_phone_page_state.dart';
import 'package:food_ninja/widgets/line_input_field.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'add_phone_page_bloc.dart';

enum SingingCharacter { lafayette, lafayettes, jefferson }

class AddPhonePageView extends StatefulWidget {
  const AddPhonePageView({Key? key}) : super(key: key);

  @override
  _AddPhonePageViewState createState() => _AddPhonePageViewState();
}

class _AddPhonePageViewState extends State<AddPhonePageView> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  List multipleSelected = [];
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "Bluetooth",
    },
    {
      "id": 1,
      "value": false,
      "title": "camera",
    },
    {
      "id": 2,
      "value": false,
      "title": "Dual-Lens camera",
    },
    {
      "id": 3,
      "value": false,
      "title": "Dual SIM",
    },
    {
      "id": 4,
      "value": false,
      "title": "Radio",
    },
  ];
  List<String> pList = ["samsung", "sony", "apple", "nokia"];
  @override
  Widget build(BuildContext context) {
    AddPhonePageBloc bloc = BlocProvider.of<AddPhonePageBloc>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Add Phone",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LineInputFeild(
                labelText: 'Address',
                validator: RequiredValidator(errorText: "Address is required"),
                isObscureText: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Condition",
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Radio<SingingCharacter>(
                          value: SingingCharacter.jefferson,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        const Expanded(
                          child: Text('Used'),
                        )
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Radio<SingingCharacter>(
                          value: SingingCharacter.lafayette,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        const Expanded(child: Text('New'))
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "Brand",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 10.0,
              ),
              BlocBuilder<AddPhonePageBloc, AddPhonePageState>(
                buildWhen: (previous, current) =>
                    previous.isLoading != current.isLoading,
                builder: (context, state) {
                  return TextDropdownFormField(
                    options: state.message,
                    onSaved: (p0) => log(p0.toString()),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10.0),
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        labelText: "Brand"),
                    // dropdownHeight: 120,
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Model",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextDropdownFormField(
                options: const ["A2", "S2", "V1B3", "CC3"],
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10.0),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    labelText: "Model"),
                // dropdownHeight: 200
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Edition(optional)",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: List.generate(
                  checkListItems.length,
                  (index) => CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      checkListItems[index]["title"],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                    value: checkListItems[index]["value"],
                    onChanged: (value) {
                      setState(() {
                        checkListItems[index]["value"] = value;
                        if (multipleSelected.contains(checkListItems[index])) {
                          multipleSelected.remove(checkListItems[index]);
                        } else {
                          multipleSelected.add(checkListItems[index]);
                        }
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Discription",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                maxLines: 5,
                maxLength: 500,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Price(Rs)",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Pick a good price',
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Add up to 5 photos",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 100.0,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    AddPhotoItem(),
                    SizedBox(
                      width: 10.0,
                    ),
                    AddPhotoItem(),
                    SizedBox(
                      width: 10.0,
                    ),
                    AddPhotoItem(),
                    SizedBox(
                      width: 10.0,
                    ),
                    AddPhotoItem(),
                    SizedBox(
                      width: 10.0,
                    ),
                    AddPhotoItem(),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Divider(),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Contact details",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 10.0,
              ),
              LineInputFeild(
                labelText: 'Name',
                validator: RequiredValidator(errorText: "Address is required"),
                isObscureText: false,
              ),
              const SizedBox(
                height: 10.0,
              ),
              LineInputFeild(
                labelText: 'Email',
                validator: RequiredValidator(errorText: "Address is required"),
                isObscureText: false,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Add Phone Number",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.transparent,
          child: const Padding(
            padding: EdgeInsets.only(
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            ),
            child: AddButton(),
          )),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: CustomColors.PRIMARY,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          "Post ad",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: CustomColors.BACKGROUND, fontSize: 18.0),
        ),
      ),
    );
  }
}

class AddPhotoItem extends StatelessWidget {
  const AddPhotoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: CustomColors.SECONDARY),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.image_outlined,
              color: CustomColors.PRIMARY,
              size: 30,
            ),
            Text(
              "Add a photo",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: CustomColors.SECONDARY, fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Message {
  Message({
    required this.id,
    required this.title,
  });

  final int id;
  final String title;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}
