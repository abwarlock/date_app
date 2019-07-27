import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(),
            ],
          )
        ],
      ),
    );
  }
}
