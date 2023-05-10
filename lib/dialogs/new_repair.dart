
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
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
        height: 500,
        width: 800,
        child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 11),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Новый ремонт", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 11,),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start  ,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.monetization_on),
                                  SizedBox(width: 6,),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Стоимость"
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SelectAvto(
                                onSelected: (avto) {
                                  selectedAvto = avto;
                                },
                              ),

                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Предполагаемая дата завершения", style: TextStyle(fontSize: 19),),
                              CalendarDatePicker2(
                                config: CalendarDatePicker2Config(),
                                onValueChanged: (_) {},
                                value: [],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}
