import 'package:flutter/material.dart';

import 'SignUpscreen.dart';

class RegisterScreenPage extends StatefulWidget {
  @override
  _RegisterScreenPageState createState() => _RegisterScreenPageState();
}

class _RegisterScreenPageState extends State<RegisterScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        centerTitle: true,
      ),
      body: SignUpScreenCard(),
    );
  }
}
