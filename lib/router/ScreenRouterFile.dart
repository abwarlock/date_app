
import 'package:flutter/material.dart';
import 'package:flutter_date_app/screens/DetailsScreen.dart';
import 'package:flutter_date_app/screens/ForgotPassword.dart';
import 'package:flutter_date_app/screens/LoginScreen.dart';
import 'package:flutter_date_app/screens/RegistorScreen.dart';
import 'package:flutter_date_app/screens/SpalshScreen.dart';

class RouteManager{
  static String splash ="splash";
  static String login ="login";
  static String signUp ="signUp";
  static String forgotPwd = "forgotPwd";
  static String detail = "detail";
  static String profileScreen ="profileScreen";
  static String profileListScreen ="profileListScreen";

  BuildContext _context;

  RouteManager(BuildContext context){
    _context =context;
  }

  Map<String, WidgetBuilder> getAppRouteMap(){
    return{
      splash: (_context) => SplashScreen(),
      login: (_context) => LoginScreen(),
      signUp: (_context) => RegisterScreenPage(),
      forgotPwd: (_context) => ForgotPwdScreen(),
      detail: (_context) => DetailScreen(),
    };
  }
}