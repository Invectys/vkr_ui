
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/common/pagination_http.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';
import 'package:trem_automology_flutter/swagger_client/SwaggerClient.dart';
import '../common/cubic_progress.dart';
import '../dialogs/new_repair.dart';
import 'current_repair_line.dart';

class CurrentRepairs extends StatefulWidget {
  const CurrentRepairs({Key? key}) : super(key: key);

  @override
  State<CurrentRepairs> createState() => _CurrentRepairsState();
}

class _CurrentRepairsState extends State<CurrentRepairs> {

  String avto = "";
  String client = "";
  double cost = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView(
            children: const [
              CurrentRepairLine(
                brand: 'Suzuki',
                time: "21:00 18:00",
                cost: "100 000 ",
                ownerName: "Владелец",
              ),
              CurrentRepairLine(
                brand: 'Mazda',
                time: "21:00 18:00",
                cost: "100 000 ",
                ownerName: "Владелец",
              )
            ],
          )
        ),
      ],
    );
  }
}
