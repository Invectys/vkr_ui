
import 'package:flutter/material.dart';

import '../months_picker.dart';
import 'line_chart_sc.dart';

class ServedClients extends StatelessWidget {
  const ServedClients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Графики", style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 11, horizontal: 6),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: true,
                        onChanged: (val) {}
                      ),
                      const Text("приток клиентов"),
                      SizedBox(width: 11,),
                      Container(
                        width: 21,
                        height: 21,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(Colors.blue),
                          value: true,
                          onChanged: (val) {}
                      ),
                      Text("приток автомобилей"),
                      SizedBox(width: 11,),
                      Container(
                        width: 21,
                        height: 21,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(Colors.blue),
                          value: false,
                          onChanged: (val) {}
                      ),
                      Text("вернулись повторно"),
                    ],
                  ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: false,
                        onChanged: (val) {}
                    ),
                    Text("заработно"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: false,
                        onChanged: (val) {}
                    ),
                    Text("текущих ремонтов"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        value: false,
                        onChanged: (val) {}
                    ),
                    Text("кол-во обращений"),
                  ],
                )
              ],
            ),
            Expanded(
              child: LineChartCustomersServed()
            ),
          ],
        ),
      )
    );
  }
}


