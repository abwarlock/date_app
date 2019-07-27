import 'package:flutter/material.dart';
import 'package:flutter_date_app/router/ScreenRouterFile.dart';

import 'DonutPieChart.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RouteManager.login);
                }),
          )
        ],
      ),
      body: DonutPieChart.withSampleData(),
    );
  }
}
