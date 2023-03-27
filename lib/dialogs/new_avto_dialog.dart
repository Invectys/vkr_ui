
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';
import 'package:uuid/uuid.dart';

import '../swagger_client/SwaggerClient.dart';

class NewAvtoDialog extends StatefulWidget {
  const NewAvtoDialog({Key? key}) : super(key: key);

  @override
  State<NewAvtoDialog> createState() => _NewAvtoDialogState();
}

class _NewAvtoDialogState extends State<NewAvtoDialog> {

  @override
  void initState() {
    super.initState();
  }

  String brand = "";
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
                const Text("Новый автомобиль", style: TextStyle(fontSize: 20),),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Имя"
                  ),
                  onChanged: (val) {
                    clientName = val;
                  },
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Марка"
                  ),
                  onChanged: (val) {
                    brand = val;
                  },
                ),
                TextButton(
                    onPressed: () async {
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
