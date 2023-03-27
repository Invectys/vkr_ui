
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../generated/swagger.swagger.dart';
import '../swagger_client/SwaggerClient.dart';

class NewClientDialog extends StatefulWidget {
  const NewClientDialog({Key? key}) : super(key: key);

  @override
  State<NewClientDialog> createState() => _NewClientDialogState();
}

class _NewClientDialogState extends State<NewClientDialog> {

  String phoneNumber = "";
  String clientName = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 200,
        child: Card(
          elevation: 21,
          child: Padding(
            padding: const EdgeInsets.all(21),
            child: Column(
              children: [
                const Text("Новый клиент", style: TextStyle(fontSize: 20),),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Имя клиента"
                  ),
                  onChanged: (val) {
                    clientName = val;
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Телефон"
                  ),
                  onChanged: (val) {
                    phoneNumber = val;
                  },
                ),
                TextButton(
                    onPressed: () async {
                      var id = const Uuid().v4();
                      var databaseItem = ClientDatabase(
                          id: id,
                          avatar: "",
                          name: clientName,
                          phoneNumber: phoneNumber
                      );
                      var response = await SwaggerClient.client.apiClientsCreatePost(
                          body: databaseItem
                      );
                      Navigator.pop(context, databaseItem);
                    },
                    child: const Text("Добавить")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
