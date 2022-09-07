import 'package:flutter/foundation.dart';

@immutable
abstract class AddPhonePageEvent {}

class InitEvent extends AddPhonePageEvent {}

class UploadImageEvent extends AddPhonePageEvent {}

class SubmitPhoneDetailsEvent extends AddPhonePageEvent {
  final String address;
  final String description;
  final String price;
  final String name;
  final String email;
  final String addPhoneNumber;
  final String imgUrl;
  SubmitPhoneDetailsEvent({
    required this.address,
    required this.addPhoneNumber,
    required this.description,
    required this.email,
    required this.name,
    required this.price,
    required this.imgUrl,
  });
}
