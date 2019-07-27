import 'package:flutter/material.dart';
import 'package:flutter_date_app/providers/RecoveryBlocData.dart';
import 'package:flutter_date_app/providers/RecoveryProvider.dart';

import 'ForgotCardWidget.dart';
import 'NewPasswordScreen.dart';

class ForgotPwdScreen extends StatefulWidget {
  @override
  _ForgotPwdScreenState createState() => _ForgotPwdScreenState();
}

class _ForgotPwdScreenState extends State<ForgotPwdScreen> {
  RecoveryBloc _counterBloc = new RecoveryBloc(data: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              if (_counterBloc.data.isEmpty) {
                Navigator.of(context).pop();
              } else {
                _counterBloc.setData("");
              }
            }),
        title: Text(
          "Forgot Pasword ?",
          style: TextStyle(
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child: StreamBuilder(
          stream: _counterBloc.subjectCounter,
          builder: (context, AsyncSnapshot<String> snapshot) {
            return _buildBlocWidget(snapshot.data);
          },
        ),
      ),
    );
  }

  Widget _buildBlocWidget(String recovoryData) {
    if (recovoryData.toString().isNotEmpty) {
      return NewPasswordScreen();
    } else {
      return ForgotCardWidget(
        counterBloc: _counterBloc,
      );
    }
  }

  Widget _buildWidget(Recovery recovoryData) {
    if (recovoryData.getCounter().toString().isNotEmpty) {
      return NewPasswordScreen();
    } else {
      return ForgotCardWidget();
    }
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
}
