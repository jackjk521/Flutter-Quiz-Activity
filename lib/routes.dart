import 'package:flutter/cupertino.dart';
import 'package:flutter_quiz_1/pages/Dashboard.dart';
import 'package:flutter_quiz_1/pages/Login.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => Login(),
  Dashboard.routeName: (BuildContext context) => Dashboard(),
};
