import 'package:flutter/material.dart';
import 'package:flutter_date_app/router/ScreenRouterFile.dart';
import 'package:flutter_date_app/screens/SpalshScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
        hintColor: Colors.red,
      ),
      home: SplashScreen(),
      routes: RouteManager(context).getAppRouteMap(),
    );
  }
}
