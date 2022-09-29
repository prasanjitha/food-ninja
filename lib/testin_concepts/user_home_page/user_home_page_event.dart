import 'package:flutter/foundation.dart';

@immutable
abstract class UserHomePageEvent {}

class GetUserNameEvent extends UserHomePageEvent {
  final String username;
  GetUserNameEvent({required this.username});
}
