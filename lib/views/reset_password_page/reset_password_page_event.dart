import 'package:flutter/foundation.dart';

@immutable
abstract class ResetPasswordPageEvent {}

class ChangeNewPasswordEvent extends ResetPasswordPageEvent {
  final String newPassword;

  ChangeNewPasswordEvent(this.newPassword);
}

class ChangeConPasswordEvent extends ResetPasswordPageEvent {
  final String conPassword;

  ChangeConPasswordEvent(this.conPassword);
}

class SubmitDataEvent extends ResetPasswordPageEvent {}
