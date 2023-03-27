
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/clients/select_client_line.dart';
import 'package:trem_automology_flutter/swagger_client/SwaggerClient.dart';

import '../generated/swagger.swagger.dart';

class SelectClient extends StatefulWidget {
  const SelectClient({Key? key}) : super(key: key);

  @override
  State<SelectClient> createState() => _SelectClientState();
}

class _SelectClientState extends State<SelectClient> {

  final ScrollController _scrollController = ScrollController();
  List<ClientDatabase> _loadedClients = List.empty(growable: true);

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      print("Offset = ${_scrollController.offset}");
    });
  }

  void loadMore() async {
    var response = await SwaggerClient.client.apiClientsClientsGet(skip: 0, limit: 100);
    if(response.body!.isNotEmpty) {
      _loadedClients.addAll(response.body!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: Image.asset("assets/profile_default.png").image,
          ),
          const SizedBox(width: 31,),
          TextButton(
            onPressed: () {
              showDialog(context: context, builder: (context) {
                return Center(
                  child: SizedBox(
                    width: 400,
                    height: 500,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(21),
                        child: Column(
                          children: [
                            const Text("Все клиенты", style: TextStyle(fontSize: 20),),
                            Expanded(
                              child: ListView.builder(
                                controller: _scrollController,
                                itemCount: _loadedClients.length,
                                itemBuilder: (context, index) {
                                  var data = _loadedClients[index];
                                  return SelectClientLine(clientName: data.name!);
                                }
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ),
                );
              });
            },
            child: const Text("Выбрать клиента", style: TextStyle(fontSize: 17),)
          ),
        ],
      ),
    );
  }
}
