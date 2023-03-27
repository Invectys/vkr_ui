
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/common/pagination_http.dart';
import 'package:trem_automology_flutter/common/search_input.dart';
import 'package:trem_automology_flutter/dialogs/new_client_dialog.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';
import 'package:trem_automology_flutter/swagger_client/SwaggerClient.dart';
import 'client_item.dart';

class TopClients extends StatefulWidget {
  const TopClients({Key? key}) : super(key: key);

  @override
  State<TopClients> createState() => _TopClientsState();
}

class _TopClientsState extends State<TopClients> {

  final listKey = GlobalKey<PaginationHttpState<ClientDatabase>>();
  String findClient = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: SearchInput(
                  hint: "По имени",
                  onFindChanged: (val) {
                    findClient = val;
                    listKey.currentState!.refresh();
                  },
                )
              ),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: SearchInput(
                    hint: "По телефону",
                    onFindChanged: (val) {
                      findClient = val;
                      listKey.currentState!.refresh();
                    },
                  )
              ),
              SizedBox(width: 11,),
              Text("По авто "),
              SizedBox(width: 5,),
              DropdownButton<String>(
                value: "Opel",
                icon: Icon(Icons.car_repair_rounded),
                elevation: 16,
                underline: Container(
                  height: 2,
                  color: Colors.blue,
                ),
                onChanged: (value) {

                },
                items: const [
                  DropdownMenuItem<String>(
                    value: "Opel",
                    child: Text("Opel"),
                  ),
                  DropdownMenuItem<String>(
                    value: "BMW",
                    child: Text("BMW"),
                  ),
                  DropdownMenuItem<String>(
                    value: "Audi",
                    child: Text("Audi"),
                  ),
                  DropdownMenuItem<String>(
                    value: "Mercedes",
                    child: Text("Mercedes"),
                  )
                ],
              ),
              SizedBox(
                width: 200,
                child: TextButton.icon(
                    icon: const Icon(Icons.add,),
                    onPressed: () async {
                      var result = await showDialog(
                          context: context,
                          builder: (context) {
                            return const NewClientDialog();
                          }
                      ) as ClientDatabase;
                      listKey.currentState!.insertInStart([result]);
                    },
                    label: const Text("Новый клиент")
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClientItem(
                  name: "Клиент 1",
                  phoneNumber: "+7 (977) 277-55-66",
                  money: "400 000 руб",
                ),
                ClientItem(
                  name: "Клиент 2",
                  phoneNumber: "+7 (926) 092-12-66",
                  money: "380 000 руб",
                ),
                ClientItem(
                  name: "Клиент 3",
                  phoneNumber: "+7 (333) 623-48-19",
                  money: "340 000 руб",
                ),
                ClientItem(
                  name: "Клиент 4",
                  phoneNumber: "+7 (264) 865-52-24",
                  money: "310 000 руб",
                ),
                ClientItem(
                  name: "Клиент 5",
                  phoneNumber: "+7 (753) 092-18-36",
                  money: "200 000 руб",
                ),
                ClientItem(
                  name: "Клиент 6",
                  phoneNumber: "+7 (962) 092-63-13",
                  money: "190 000 руб",
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
