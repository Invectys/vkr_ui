
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
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Всего 10"),
                  Text(" Почти завершено 3"),
                  CubicProgress(finalCount: 3,),
                  TextButton.icon(
                    onPressed: () async {
                      showDialog(context: context, builder: (context) {
                        return NewRepairDialog();
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text("Новый ремонт")
                  )
                ],
              )
          ),
        ),
        Expanded(
          child: PaginationHttp(
            itemBuilder: (context, data, index) {
              var repair = data as RepairDatabase;
              return CurrentRepairLine(
                repairDatabase: repair,
              );
            },
            fetchNew: (skip, count) async {
              var response = await SwaggerClient.client.apiRepairsRepairsGet(skip: skip, limit: count);
              var listData = response.body!;
              return listData;
            },
          )
        ),
      ],
    );
  }
}
