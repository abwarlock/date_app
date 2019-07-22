import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(420),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 15.0),
              blurRadius: 15.0),
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -10.0),
              blurRadius: 10.0),
        ],
      ),
      child: Padding(
        padding:
        EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                fontSize: ScreenUtil.getInstance().setSp(45),
                fontFamily: "Poppins-Bold",
                letterSpacing: .6,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "UserName",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(26)),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text(
              "Pass Word",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: ScreenUtil.getInstance().setSp(26)),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontSize: 12.0)),
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(30),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
