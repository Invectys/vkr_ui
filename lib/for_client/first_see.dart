
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/for_client/row_time_cards.dart';


class FirstSee extends StatelessWidget {
  const FirstSee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text("Текущая неделя", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: const [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Text("Понедельник", style: TextStyle(fontSize: 18,),)
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text("Вторник", style: TextStyle(fontSize: 18,))
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text("Среда", style: TextStyle(fontSize: 18,))
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text("Четверг", style: TextStyle(fontSize: 18,))
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text("Пятница", style: TextStyle(fontSize: 18,))
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Text("Суббота", style: TextStyle(fontSize: 18,))
            )
          ],
        ),
        const Divider(thickness: 1, color: Colors.black,),
        Row(
          children: const [
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text("12:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("12:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("12:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("12:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("12:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Card(
                    elevation: 4,
                    child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("12:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                    ),
                  ),
                )
            ),
          ],
        ),
        RowTimeCards(time: '13:00',),
        RowTimeCards(time: '14:00',),
        RowTimeCards(time: '15:00',),
        RowTimeCards(time: '16:00',),
        RowTimeCards(time: '17:00',),
        RowTimeCards(time: '18:00',),
        RowTimeCards(time: '19:00',),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 400,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Номер телефона"
                ),
              ),
            ),
            SizedBox(width: 21,),
            ElevatedButton(onPressed: () {}, child: Text("Оставить заявку на первичный осмотр", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),))
          ],
        )
      ],
    );
  }
}
