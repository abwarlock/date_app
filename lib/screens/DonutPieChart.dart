import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class DonutPieChart extends StatelessWidget {
  final List<Series> seriesList;
  final bool animate;

  DonutPieChart(this.seriesList, {this.animate});

  factory DonutPieChart.withSampleData() {
    return DonutPieChart(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PieChart(
        seriesList,
        animate: animate,
        defaultRenderer: ArcRendererConfig(
          arcWidth: 120,
        ),
      ),
    );
  }

  static List<Series<LinerSales, int>> _createSampleData() {
    final data = [
      LinerSales(0, 1, Color(r: 180, g: 40, b: 0), "a"),
      LinerSales(1, 2, Color(r: 110, g: 40, b: 70), "b"),
      LinerSales(2, 1, Color(r: 120, g: 30, b: 64), "c"),
      LinerSales(3, 2, Color(r: 70, g: 10, b: 94), "d")
    ];
    return [
      new Series(
        id: "Sales",
        displayName: "Sales",
        data: data,
        domainFn: (LinerSales sales, _) => sales.year,
        measureFn: (LinerSales sales, _) => sales.sales,
        colorFn: (LinerSales sales, _) => sales.color,
        labelAccessorFn: (LinerSales sales, _) => sales.title,
      ),
    ];
  }
}

class LinerSales {
  final int year;
  final int sales;
  final Color color;
  final String title;

  LinerSales(this.year, this.sales, this.color, this.title);
}
