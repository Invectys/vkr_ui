
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/for_client/history_item.dart';

class HistoryRepairs extends StatelessWidget {
  const HistoryRepairs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "По названию"
                      ),
                      onChanged: (val) {
                      },
                    ),
                  ),
                  const Icon(Icons.search),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "Поиск марки"
                      ),
                      onChanged: (val) {
                      },
                    ),
                  ),
                  const Icon(Icons.search),
                ],
              ),
              SizedBox(
                height: 300,
                child: GridView.count(
                  crossAxisCount: 5,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  children: [
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/audi.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/bmw.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/chevrolet.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/citroen.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/honda.webp")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/kia.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/landrover.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/mazda.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/merc.jpeg")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/opel.jpeg")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/porsche.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/nissan.jpeg")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/opel.jpeg")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/peugeot.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/lexus.jpeg")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/renault.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/skoda.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/toyota.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/suzuki.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/volkswagen.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/volkswagen.png")
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/avto-icons/volvo.png")
                      ),
                    ),
                  ],
                ),
              ),
              Text("Ремонты в диапазоне дат", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range
                ),
                onValueChanged: (_) {},
                value: [],
              )
            ],
          ),
        ),
        SizedBox(width: 11,),
        Expanded(
          child: GridView.count(crossAxisCount: 2,
            children: [
                HistoryItem(assetOne: "assets/rangerover1_profile.webp", title: ""),
            ],
          ),
        ),
      ],
    );
  }
}
