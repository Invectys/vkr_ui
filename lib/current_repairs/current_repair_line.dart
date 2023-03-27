
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/clients/full_client_information.dart';
import 'package:trem_automology_flutter/common/cubic_progress.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';

class CurrentRepairLine extends StatelessWidget {
   CurrentRepairLine({Key? key,
     required this.repairDatabase
   }) : super(key: key);

  RepairDatabase repairDatabase;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(11),
      child: MaterialButton(
        onPressed: () {

        },
        child: Container(
          height: 90,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {

                    },
                    child: Text(repairDatabase.avto!.brand!, style: const TextStyle(fontSize: 21, color: Colors.black),)
                  ),
                  const SizedBox(width: 21,),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(repairDatabase.avto!.owner!.name!),
                  ),
                  Spacer(),
                  Text("Стадия "),
                  CubicProgress(finalCount: 3)
                ],
              ),
              Row(
                children: [
                  const Text("21.02 12:00", style: TextStyle(fontSize: 12),),
                  const Spacer(),
                  Text("${repairDatabase.cost} руб", style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
