import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';
import 'package:time_planner/time_planner.dart';
import 'package:trem_automology_flutter/avto/avto_item.dart';
import 'package:trem_automology_flutter/clients/client_item.dart';

import '../clients/client_item_vertical.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  List<TimePlannerTask> tasks = [
    TimePlannerTask(
      color: Colors.blue,
      // day: Index of header, hour: Task will be begin at this hour
      // minutes: Task will be begin at this minutes
      dateTime: TimePlannerDateTime(day: 0, hour: 14, minutes: 30),
      minutesDuration: 20,
      daysDuration: 1,
      onTap: () {},
      child: const Text(
        'Позвонить',
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    ),
    TimePlannerTask(
      color: Colors.blue,
      // day: Index of header, hour: Task will be begin at this hour
      // minutes: Task will be begin at this minutes
      dateTime: TimePlannerDateTime(day: 1, hour: 12, minutes: 30),
      minutesDuration: 60,
      daysDuration: 1,
      onTap: () {},
      child: const Text(
        'Сдать машину',
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    ),
    TimePlannerTask(
      color: Colors.blueAccent,
      // day: Index of header, hour: Task will be begin at this hour
      // minutes: Task will be begin at this minutes
      dateTime: TimePlannerDateTime(day: 0, hour: 11, minutes: 00),
      minutesDuration: 120,
      daysDuration: 1,
      onTap: () {},
      child: const Text(
        'Первичный осмотр',
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    ),
    TimePlannerTask(
      color: Colors.purple,
      dateTime: TimePlannerDateTime(day: 3, hour: 13, minutes: 42),
      minutesDuration: 120,
      daysDuration: 1,
      onTap: () {},
      child: const Text(
        'Первичный осмотр',
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    ),
    TimePlannerTask(
      color: Colors.blueAccent,
      dateTime: TimePlannerDateTime(day: 2, hour: 13, minutes: 0),
      minutesDuration: 70,
      daysDuration: 1,
      onTap: () {},
      child: const Text(
        'Принять запчасти',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 12, decorationStyle: TextDecorationStyle.dotted),
      ),
    ),
    TimePlannerTask(
      color: Colors.blue,
      // day: Index of header, hour: Task will be begin at this hour
      // minutes: Task will be begin at this minutes
      dateTime: TimePlannerDateTime(day: 5, hour: 12, minutes: 30),
      minutesDuration: 20,
      daysDuration: 1,
      onTap: () {},
      child: const Text(
        'Позвонить',
        style: TextStyle(color: Colors.white, fontSize: 12),
        textAlign: TextAlign.center,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 11,
      child: Row(
        children: [
          Expanded(
            child: TimePlanner(
              // time will be start at this hour on table
              startHour: 9,
              // time will be end at this hour on table
              endHour: 19,
              // each header is a column and a day
              headers: const [
                TimePlannerTitle(
                  date: "27/03/2023",
                  title: "Понедельник",
                ),
                TimePlannerTitle(
                  date: "28/03/2023",
                  title: "Вторник",
                ),
                TimePlannerTitle(
                  date: "29/03/2023",
                  title: "Среда",
                ),
                TimePlannerTitle(
                  date: "30/03/2023",
                  title: "Четверг",
                ),
                TimePlannerTitle(
                  date: "31/03/2023",
                  title: "Пятница",
                ),
                TimePlannerTitle(
                  date: "1/04/2023",
                  title: "Суббота",
                ),
              ],
              tasks: tasks,
            ),
          ),
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        //s
                        showDialog(context: context, builder: (_) {
                          return Center(
                            child: SizedBox(
                              width: 800,
                              height: 430,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 11),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text("Новая задача", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Column(
                                                children: [
                                                  CalendarDatePicker2(
                                                    config: CalendarDatePicker2Config(),
                                                    onValueChanged: (_) {},
                                                    value: [],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              flex: 1,
                                              fit: FlexFit.tight,
                                              child: Column(
                                                children: [
                                                  TextFormField(
                                                    decoration: const InputDecoration(
                                                      hintText: "Название",
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                  TextFormField(
                                                    decoration: const InputDecoration(
                                                      hintText: "Описание задачи",
                                                    ),
                                                    maxLines: 4,
                                                  ),
                                                  const SizedBox(height: 11,),
                                                  TextFormField(
                                                    decoration: const InputDecoration(
                                                      hintText: "Длительность",
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                  const SizedBox(height: 11,),
                                                  TextFormField(
                                                    decoration: const InputDecoration(
                                                      hintText: "Тип задачи",
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                  Spacer(),
                                                  Row(
                                                    children: [
                                                      TextButton.icon(
                                                          onPressed: () {},
                                                          icon: Icon(Icons.person),
                                                          label: Text("Выбрать клиента")
                                                      ),
                                                      TextButton.icon(
                                                          onPressed: () {},
                                                          icon: Icon(Icons.car_repair),
                                                          label: Text("Выбрать автомобиль")
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {

                                              },
                                              child: Text("Создать задачу")
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                        //s
                      },
                      icon: const Icon(Icons.access_time_filled_rounded, size: 21,),
                      label: const Text("Новая задача"),
                    ),
                    const SizedBox(height: 3,),
                    const Divider(color: Colors.black38,),
                    const SizedBox(height: 21,),
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 21),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text("Первичный осмотр", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                                const SizedBox(width: 11,),
                                TextButton.icon(
                                  onPressed: () {

                                  },
                                  icon: const Icon(Icons.chat,),
                                  label: const Text("Написать", style: TextStyle(fontSize: 15),),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8,),
                            const ClientItemVertical(name: "Имя клиента", phoneNumber: "+7 (977) 277-55-66", money: "0 руб", axis: Axis.vertical,)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Card(
                      elevation: 11,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 5),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text("Автомобиль не добавлен",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 21,),
                                TextButton.icon(
                                    onPressed: () {

                                    },
                                    icon: Icon(Icons.add),
                                    label: Text("Добавить новый")
                                ),
                                SizedBox(width: 11,),
                                TextButton.icon(
                                    onPressed: () {

                                    },
                                    icon: const Icon(Icons.car_repair),
                                    label: const Text("Добавить существующий")
                                )
                              ],
                            )
                          ],
                        )
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 11
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("13:50 - 15:40", style: TextStyle(fontSize: 21),),

                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: true,
                                    onChanged: (_) {
                                    }
                                ),
                                const Text("Прислать уведомление мне")
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: true,
                                    onChanged: (_) {
                                    }
                                ),
                                const Text("Прислать уведомление клиенту")
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
