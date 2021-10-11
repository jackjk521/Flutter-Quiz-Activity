import 'package:flutter/cupertino.dart';
import 'package:flutter_quiz_1/pages/Dashboard.dart';
import 'package:flutter_quiz_1/pages/Login.dart';
import 'package:flutter_quiz_1/pages/Profile.dart';
import 'package:flutter_quiz_1/pages/Settings.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (BuildContext context) => const Login(),
  Dashboard.routeName: (BuildContext context) => const Dashboard(),
  Profile.routeName: (BuildContext context) => Profile(),
  Settings.routeName: (BuildContext context) => Settings(),
};


