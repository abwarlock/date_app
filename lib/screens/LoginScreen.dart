import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'FormCard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.redAccent,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  "assets/dating.jpg",
                  width: ScreenUtil.getInstance().setWidth(800),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset(
                "assets/dating_2.png",
                colorBlendMode: BlendMode.softLight,
              )
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 100.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.0,
                        child: Icon(Icons.people),
                      ),
                      Text(
                        "LOGO",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins-Bold",
                          letterSpacing: .6,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(220),
                  ),
                  FormCard(),
                  SizedBox(

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
