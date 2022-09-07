import 'package:flutter/foundation.dart';

@immutable
abstract class AddNewProductPageEvent {}

class AddBroductDetailsEvent extends AddNewProductPageEvent {
  final String name;
  final String price;

  AddBroductDetailsEvent({required this.name, required this.price});
}
