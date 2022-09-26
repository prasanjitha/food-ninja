import 'package:flutter/foundation.dart';

@immutable
abstract class TeaHomePageEvent {}

class GetProductDetailsEvent extends TeaHomePageEvent {}

class InitEvent extends TeaHomePageEvent {}
