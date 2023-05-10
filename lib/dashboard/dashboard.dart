
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, top: 6, right: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 200,
            child: Card(
              elevation: 11,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Текущий месяц", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 7,),
                    Row(
                      children: const [
                        Text("Заработано: 210 000 руб"),
                        Text(" +2%", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Обслужено автомобилей: 5"),
                        Text("  - 20%", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Новых клиентов: 4"),
                        Text("  - 50%", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Клиентов вернулось повторно: 2"),
                        Text("  - 30%", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Сейчас в ремонте: 1"),
                      ],
                    ),
                    const SizedBox(height: 21,),

                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
