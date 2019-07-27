import 'package:flutter/material.dart';
import 'package:flutter_date_app/router/ScreenRouterFile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'FormCard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget _radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2.0, color: Colors.black),
        ),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              )
            : Container(),
      );

  Widget _userLoginWidget() => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 12.0,
                  ),
                  GestureDetector(
                    onTap: _radio,
                    child: _radioButton(_isSelected),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Remainber Me",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Poppins-Medium",
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(
                      RouteManager.detail);
                },
                child: Container(
                  width: ScreenUtil.getInstance().setWidth(320),
                  height: ScreenUtil.getInstance().setHeight(100),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFF17aad9),
                        Color(0xFF6078ea),
                      ]),
                      borderRadius: BorderRadius.circular(6.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF17aad9).withOpacity(.3),
                          offset: Offset(0.0, 8.0),
                          blurRadius: 8.0,
                        ),
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Center(
                        child: Text(
                          "SignIn",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins-Medium",
                              fontSize: 18,
                              letterSpacing: 1.0),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil.getInstance().setHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "New User ?  ",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins-Medium",
                    fontSize: 18),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteManager.signUp);
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontFamily: "Poppins-Bold",
                      fontSize: 18),
                ),
              )
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1234, allowFontScaling: true);
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.redAccent,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Image.asset(
                    "assets/navimg_1.jpg",
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset(
                "assets/navimg_2.png",
                colorBlendMode: BlendMode.softLight,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
                child: Column(
                  children: <Widget>[
                    FormCard(),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(40),
                    ),
                    _userLoginWidget()
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
