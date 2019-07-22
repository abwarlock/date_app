import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_date_app/router/ScreenRouterFile.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child: Icon(
                            Icons.people,
                            color: Colors.blueAccent,
                            size: 35.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.5,
                          ),
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            letterSpacing: 1.5,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

  void startTimer(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed(RouteManager.login);
    });
  }
}
