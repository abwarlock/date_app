import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.green[500],
            Colors.green[600],
            Colors.green[700],
            Colors.green[400],
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 30, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 35.0,
                  child: Icon(Icons.vpn_key),
                ),
                Text(
                  "Reset Your Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Enter your new Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "New Password",
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Password cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                        fontFamily: "Poppins", color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    validator: (val) {
                      if (val.length == 0) {
                        return "Email cannot be empty";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                        fontFamily: "Poppins", color: Colors.white),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
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
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          child: Center(
                            child: Text(
                              "Reset Passsword",
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
