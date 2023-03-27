
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/avto/select_avto.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';
import 'package:trem_automology_flutter/swagger_client/SwaggerClient.dart';
import 'package:uuid/uuid.dart';

class NewRepairDialog extends StatefulWidget {
  const NewRepairDialog({Key? key}) : super(key: key);

  @override
  State<NewRepairDialog> createState() => _NewRepairDialogState();
}

class _NewRepairDialogState extends State<NewRepairDialog> {

  AvtoDatabase? selectedAvto;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 400,
        child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Новый ремонт", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                  SelectAvto(
                    onSelected: (avto) {
                      selectedAvto = avto;
                    },
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      if(selectedAvto == null) {
                        return;
                      }
                      var id = const Uuid().v4();
                      var database = RepairDatabase(
                          id: id,
                          avto: selectedAvto!,
                          cost: 100,
                          endDate: null,
                          stage: 0,
                          stages: [
                            RepairStageDatabase(
                              name: "Старт",
                            ),
                            RepairStageDatabase(
                              name: "Половина работ завершена",
                            ),
                            RepairStageDatabase(
                              name: "Завершение",
                            )
                          ],
                          startDate: DateTime.now()
                      );
                      var response = await SwaggerClient.client.apiRepairsCreatePost(
                        body: database
                      );
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.create),
                    label: const Text("Добавить")
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
