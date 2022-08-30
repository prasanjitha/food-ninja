import 'package:flutter/foundation.dart';
import 'package:food_ninja/models/Title.dart';

@immutable
abstract class GetTitleDetailsPageEvent {}

class InitEvent extends GetTitleDetailsPageEvent {}

class GetTitleObjectEvent extends GetTitleDetailsPageEvent {}
