
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Заработано: 100 000 руб ")
                ],
              )
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Card(
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Автомобилей в ремонте: 3", style: TextStyle(color: Colors.white),),
                        SizedBox(height: 11,),
                        Text("Выполнено за месяц: 10", style: TextStyle(color: Colors.white),),
                        SizedBox(height: 11,),
                        Text("Самый популярный автомобиль: Opel", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                        Text("Оценки пользователей: 4,7 ", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                        Text("Выполнено ремонтов за квартал: 78", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                        Text("Выполнено ремонтов за год: 100", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                        Text("Новых клиентов за месяц: 10", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                        Text("Вернулось постоянных клиентов: 2", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                        Text("Средний чек клиента: 30 000 руб", style: TextStyle(color: Colors.white)),
                        SizedBox(height: 11,),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11))
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
