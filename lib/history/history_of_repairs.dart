
import 'package:flutter/material.dart';

import 'history_repair_line.dart';

class HistoryOfRepairs extends StatelessWidget {
  const HistoryOfRepairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 2,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Всего 10"),
                  Text(" Почти завершено 3"),
                ],
              )
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return HistoryRepairLine(
                );
              }
          ),
        ),
      ],
    );
  }
}
