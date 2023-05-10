
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
      child: IntrinsicHeight(
        child: SizedBox(
          width: 400,
          child: Card(
            elevation: 21,
            child: Padding(
              padding: const EdgeInsets.all(21),
              child: Column(
                children: [
                  const Text("Новый автомобиль", style: TextStyle(fontSize: 20),),
                  TextField(
                    decoration: const InputDecoration(
                        hintText: "Название"
                    ),
                    onChanged: (val) {
                      clientName = val;
                    },
                  ),
                  Row(
                    children: const [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Тип кузова"
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Тип топлива"
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Класс"
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Привод"
                          ),
                        ),
                      ),
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
                              clientName = val;
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
      ),
    );
  }
}
