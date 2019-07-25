import 'package:flutter/material.dart';

class ForgotPwdScreen extends StatefulWidget {
  @override
  _ForgotPwdScreenState createState() => _ForgotPwdScreenState();
}

class _ForgotPwdScreenState extends State<ForgotPwdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Pasword ?",
          style: TextStyle(
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.indigo[500],
              Colors.indigo[600],
              Colors.indigo[700],
              Colors.indigo[400],
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 10.0, right: 10.0),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 35.0,
                child: Icon(Icons.lock),
              ),
              Text(
                "Forgot Your Pasword",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Enter your phone number or recovery email",
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
                    labelText: "Recovery option",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(style: BorderStyle.solid),
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
                    fontFamily: "Poppins",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
