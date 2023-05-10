
import 'package:flutter/material.dart';

import 'first_see.dart';
import 'for_client_repair_status.dart';
import 'history_repairs.dart';


class ForClientPage extends StatelessWidget {
  const ForClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Автосервис в Реутове, 7 Верхняя линия Trem Automology"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 11,),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("История ремонтов", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)),
              TextButton(onPressed: () {}, child: const Text("Запись на первичный осмотр", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))),
              TextButton(onPressed: () {}, child: const Text("Прогресс ремонта вашего автомобиля", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))),
              const Spacer(),
              const Text("Телефон для связи ", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
              const Text("+7 (977) 277 55 66 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),)
            ],
          ),
          const SizedBox(height: 11,),
          const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
                child: FirstSee()
              )
          )
        ],
      ),
    );
  }
}
