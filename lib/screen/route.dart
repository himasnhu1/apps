import 'package:app/screen/feedback.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'SignUpscreen.dart';

Map routes(BuildContext c){
  Map<String,WidgetBuilder> routes = {
    '/' : (c) => Login(),
    '/Registration_Screen': (c) => SignupScreen(),
    '/home' : (c) => Homescreen(),
    '/feedback' : (c) => FeedBack()
  };
  return routes;
}