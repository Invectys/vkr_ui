
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../generated/swagger.swagger.dart';
import '../swagger_client/SwaggerClient.dart';

class NewClientSetPhoneDialog extends StatefulWidget {
  const NewClientSetPhoneDialog({Key? key}) : super(key: key);

  @override
  State<NewClientSetPhoneDialog> createState() => _NewClientSetPhoneDialogState();
}

class _NewClientSetPhoneDialogState extends State<NewClientSetPhoneDialog> {
  String phoneNumber = "";
  String clientName = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 220,
        child: Card(
          elevation: 21,
          child: Padding(
            padding: const EdgeInsets.all(21),
            child: Column(
              children: [
                const Text("Новый клиент", style: TextStyle(fontSize: 20),),
                const SizedBox(height: 5,),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Псевдоним"
                  ),
                  onChanged: (val) {
                    clientName = val;
                  },
                ),
                const SizedBox(height: 11,),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Номер телефона"
                  ),
                ),
                Spacer(),
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
                    child: const Text("Создать")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
