import 'package:flutter/foundation.dart';

@immutable
abstract class HomePageEvent {}

class GetProductDetailsEvent extends HomePageEvent {
  final String name;
  final String price;

  GetProductDetailsEvent({required this.name, required this.price});
}

class InitEvent extends HomePageEvent {}

class SubmitUserDataEvent extends HomePageEvent {
  final String price;
  SubmitUserDataEvent({required this.price});
}
