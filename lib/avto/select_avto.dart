
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/avto/select_avto_line.dart';
import 'package:trem_automology_flutter/common/pagination_http.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';

import '../swagger_client/SwaggerClient.dart';

class SelectAvto extends StatefulWidget {
  const SelectAvto({Key? key, required this.onSelected}) : super(key: key);

  final Function(AvtoDatabase avtoDatabase) onSelected;

  @override
  State<SelectAvto> createState() => _SelectAvtoState();
}

class _SelectAvtoState extends State<SelectAvto> {
  AvtoDatabase? selected = null;

  @override
  void initState() {
    super.initState();
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
              onPressed: () async {
                var newSelected = await showDialog(context: context, builder: (context) {
                  return Center(
                    child: SizedBox(
                      width: 400,
                      height: 500,
                      child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(21),
                            child: Column(
                              children: [
                                const Text("Все автомобили", style: TextStyle(fontSize: 20),),
                                Expanded(
                                  child: PaginationHttp(
                                    fetchNew: (skip, count) async {
                                      var result = await SwaggerClient.client.apiAvtoAvtosGet(skip: skip, limit: count);
                                      return result.body!;
                                    },
                                    itemBuilder: (context, data, index) {
                                      var avto = data as AvtoDatabase;
                                      return SelectAvtoLine(
                                        avto: avto,
                                        onSelected: (AvtoDatabase selected) {
                                          Navigator.pop(context, selected);
                                        },
                                      );
                                    },
                                  )
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  );
                });
                if(newSelected != null) {
                  setState(() {
                    selected = newSelected;
                  });
                  widget.onSelected(selected!);
                }
              },
              child: Text(selected == null ? "Выбрать автомобиль" : "Выбрано ${selected!.brand}", style: const TextStyle(fontSize: 17),)
          ),
        ],
      ),
    );
  }
}
