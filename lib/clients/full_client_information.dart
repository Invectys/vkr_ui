
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/avto/avto_item.dart';
import 'package:trem_automology_flutter/common/pagination_http.dart';
import 'package:trem_automology_flutter/dialogs/new_avto_dialog.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';

class FullClientInformation extends StatefulWidget {
  const FullClientInformation({Key? key}) : super(key: key);

  @override
  State<FullClientInformation> createState() => _FullClientInformationState();
}

class _FullClientInformationState extends State<FullClientInformation> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  final listKey = GlobalKey<PaginationHttpState<AvtoDatabase>>();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    fit:FlexFit.tight,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child: Column(
                          children: [
                            Image.asset("assets/profile_default.png"),
                            const SizedBox(height: 11,),
                            const Text("Имя или псевдоним клиента", style: TextStyle(fontSize: 21),),
                            const SizedBox(height: 21,),
                            Row(
                              children: const [
                                Text("Телефон: +7 (977) 277-55-66", style: TextStyle(fontSize: 18),)
                              ],
                            ),
                            const SizedBox(height: 11,),
                            Row(
                              children: const [
                                Text("Последнее посещение сервиса: ", style: TextStyle(fontSize: 18),),
                                Text("25.10.2022", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            const SizedBox(height: 11,),
                            Row(
                              children: const [
                                Text("Потратил: ", style: TextStyle(fontSize: 18),),
                                Text("217 000 руб", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                              ],
                            ),
                            const SizedBox(height: 11,),
                            Row(
                              children: const [
                                Text("В рейтинге: ", style: TextStyle(fontSize: 18),),
                                Text("10", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                Spacer(),
                                Text("100", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                SizedBox(width: 11,),
                                Text("Очков"),
                                SizedBox(width: 11,),
                              ],
                            ),
                            const SizedBox(height: 11,),
                            Divider(),
                            Row(
                              children: const [
                                Text("Уведомления (вкл/выкл)", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: Column(
                                children: [
                                  const SizedBox(height: 11,),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: true,
                                          onChanged: (val) {

                                          }
                                      ),
                                      const Text("О прогрессе работ", style: TextStyle(fontSize: 18),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: true,
                                          onChanged: (val) {

                                          }
                                      ),
                                      const Text("Предупреждения", style: TextStyle(fontSize: 18),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                          value: true,
                                          onChanged: (val) {

                                          }
                                      ),
                                      const Text("Рекламные кампании", style: TextStyle(fontSize: 18),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 21,),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: const Text("Связаться",
                                      style: TextStyle(fontSize: 18),
                                    )
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ),
                  const SizedBox(width: 21,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: ListView(
                      children: [
                        const AvtoItem(
                          avtoAsset: "assets/rangerover1_profile.webp",
                          title: 'RangeRover',
                          repairsAmount: "1",
                          cost: "97 000 руб",
                          dateLastRepair: "25.10.2023",
                          phoneNumber: "+7 (977) 277-55-66",
                          rating: "10",
                        ),
                        const AvtoItem(
                          avtoAsset: "assets/porshe_profile1.webp",
                          title: 'Porshe',
                          repairsAmount: "1",
                          cost: "120 000 руб",
                          dateLastRepair: "25.10.2022",
                          phoneNumber: "+7 (977) 277-55-66",
                          rating: "10",
                        ),
                        const SizedBox(height: 21,),
                        Center(
                          child: TextButton.icon(
                              onPressed: () {
                                showDialog(context: context, builder: (_) {
                                  return NewAvtoDialog();
                                });
                              },
                              icon: const Icon(Icons.add),
                              label: const Text("Добавить автомобиль", style: TextStyle(fontSize: 21),)
                          )
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Телефоны", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                                      IconButton(icon: Icon(Icons.add), onPressed: () {  },)
                                    ],
                                  ),
                                  Card(
                                    elevation: 2,
                                    child: Row(
                                      children: [
                                        IconButton(icon: Icon(Icons.star), onPressed: () {  },),
                                        const Text("+ 7 (977) 277 55 66", style: TextStyle(fontSize: 21))
                                      ],
                                    ),
                                  ),
                                  Card(
                                    elevation: 2,
                                    child: Row(
                                      children: [
                                        IconButton(icon: Icon(Icons.star_border_outlined), onPressed: () {  },),
                                        const Text("+ 7 (254) 123 55 55", style: TextStyle(fontSize: 21))
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ),
                            Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text("Почты и мессенджеры", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                                        IconButton(icon: Icon(Icons.add), onPressed: () {  },)
                                      ],
                                    ),
                                    Card(
                                      elevation: 2,
                                      child: Row(
                                        children: [
                                          IconButton(icon: Icon(Icons.star), onPressed: () {  },),
                                          Image.asset("assets/telegram.webp", height: 32, width: 32,),
                                          const SizedBox(width: 6,),
                                          const Text("+ 7 (254) 123 55 55", style: TextStyle(fontSize: 21))
                                        ],
                                      ),
                                    ),
                                    Card(
                                      elevation: 2,
                                      child: Row(
                                        children: [
                                          IconButton(icon: Icon(Icons.star_border_outlined), onPressed: () {  },),
                                          Image.asset("assets/gmail.png", height: 32, width: 32,),
                                          const SizedBox(width: 6,),
                                          const Text(" asdfasfass@gmail.com", style: TextStyle(fontSize: 21))
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            )

                          ],
                        ),

                      ],
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }


}
