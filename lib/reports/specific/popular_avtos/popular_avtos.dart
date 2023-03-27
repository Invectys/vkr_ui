import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/reports/specific/months_picker.dart';
import 'package:trem_automology_flutter/reports/specific/popular_avtos/pie_chart_pa.dart';

import 'bar_chart_pa.dart';

class PopularAvtos extends StatelessWidget {
  const PopularAvtos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Полуярные автомобили"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PiePopularAvtos(),
                    BarChartPA()
                  ],
                )
            ),
            MonthsPicker()
          ],
        ),
      ),
    );
  }
}
