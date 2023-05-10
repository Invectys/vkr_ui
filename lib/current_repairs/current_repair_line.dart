
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/clients/full_client_information.dart';
import 'package:trem_automology_flutter/common/cubic_progress.dart';
import 'package:trem_automology_flutter/current_repairs/stage_block.dart';
import 'package:trem_automology_flutter/dialogs/new_repair.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';

class CurrentRepairLine extends StatelessWidget {
   const CurrentRepairLine({Key? key,
     required this.brand,
     required this.cost,
     required this.ownerName,
     required this.time
   }) : super(key: key);

   final String brand;
   final String cost;
   final String ownerName;
   final String time;

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
                    child: Text(brand, style: const TextStyle(fontSize: 21, color: Colors.black),)
                  ),
                  const SizedBox(width: 21,),
                  TextButton(
                    onPressed: () {
                    },
                    child: Text(ownerName),
                  ),
                  const SizedBox(width: 41,),
                  const SizedBox(width: 11,),
                  const CubicProgress(finalCount: 3),
                  const SizedBox(width: 21,),
                  TextButton(
                    onPressed: () {
                      showDialog(context: context, builder: (_) {
                        return Center(
                          child: SizedBox(
                            width: 800,
                            child: Card(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 6,),
                                    const Text("Все добавленные стадии", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                                    const SizedBox(height: 11,),
                                    Expanded(
                                      child: GridView.count(
                                        crossAxisCount: 3,
                                        children: const [
                                          StageBlock(
                                            title: "Стадия 1",
                                            assetOne: "assets/stage/_1.jpg",
                                          ),
                                          StageBlock(
                                            title: "Стадия 2",
                                            assetOne: "assets/stage/1.jpg",
                                          ),
                                          StageBlock(
                                            title: "Стадия 3",
                                            assetOne: "assets/stage/3.jpg",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
                          ),
                        );
                      });
                    },
                    child: const Text("Стадии")
                  ),

                  const SizedBox(width: 21,),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit, size: 18,)),
                  Text("$cost руб", style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  const SizedBox(width: 4,),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete, color: Colors.red,)),
                ],
              ),
              Row(
                children: [
                  Text("Создано: $time", style: const TextStyle(fontSize: 12),),
                  TextButton(onPressed: () {}, child: const Text("Завершить")),
                  const SizedBox(width: 11,),
                  Checkbox(value: true, onChanged: (val) {}),
                  const Text("Отображать в истории"),
                  TextButton.icon(
                      onPressed: () {
                        showDialog(context: context, builder: (_) {
                          return Center(
                            child: SizedBox(
                              width: 800,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                                  child: IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text("Следующая стадия", style: TextStyle(fontSize: 21),),
                                              const SizedBox(height: 21,),
                                              Card(
                                                elevation: 4,
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                        flex: 1,
                                                        fit: FlexFit.tight,
                                                        child: Image.asset("assets/stage/1.jpg")
                                                    ),
                                                    Flexible(
                                                        flex: 1,
                                                        fit: FlexFit.tight,
                                                        child: AspectRatio(
                                                            aspectRatio: 1.5,
                                                            child: Image.asset("assets/stage/2.jpg", fit: BoxFit.cover,)
                                                        )
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 11,),
                                              TextButton.icon(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.image),
                                                  label: Text("Загрузить картинку")
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 11,),
                                        Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                SizedBox(height: 40,),
                                                TextFormField(
                                                  initialValue: "Собираем кузов после покраски деталей",
                                                  maxLines: 10,
                                                  decoration: InputDecoration(
                                                      hintText: "Описание"
                                                  ),
                                                ),
                                                SizedBox(height: 11,),
                                                Row(
                                                  children: [
                                                    Checkbox(value: true, onChanged: (val) {}),
                                                    Text("Уведомить клиента")
                                                  ],
                                                ),
                                                SizedBox(height: 11,),
                                                Row(
                                                  children: [
                                                    Checkbox(value: true, onChanged: (val) {}),
                                                    Text("Показывать в истории")
                                                  ],
                                                ),
                                                Spacer(),
                                                ElevatedButton(onPressed: () {}, child: Text("Добавить"))
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Добавить следующую стадию")
                  ),
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
