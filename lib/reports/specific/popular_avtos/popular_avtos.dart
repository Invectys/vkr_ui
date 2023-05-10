import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/reports/specific/months_picker.dart';
import 'package:trem_automology_flutter/reports/specific/popular_avtos/pie_chart_pa.dart';

import '../month_picker_vert.dart';

class PopularAvtos extends StatelessWidget {
  const PopularAvtos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Полуярные автомобили"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: PiePopularAvtos()
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range,
                ),
                value: [
                  DateTime(2023, 1, 1),
                  DateTime(2023, 3, 1)
                ],
                onValueChanged: (dates) {},
              )
            )
          ],
        ),
      ),
    );
  }
}
