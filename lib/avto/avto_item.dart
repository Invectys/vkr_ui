
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/clients/select_client.dart';

class AvtoItem extends StatelessWidget {
  const AvtoItem({Key? key, required this.avtoAsset,
    required this.title, required this.repairsAmount,
    required this.cost, required this.dateLastRepair,
    required this.phoneNumber, required this.rating
  }) : super(key: key);

  final String avtoAsset;
  final String title;
  final String repairsAmount;
  final String cost;
  final String dateLastRepair;
  final String phoneNumber;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4,),
      child: ElevatedButton(
        onPressed: () {

        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                )
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(21),
                child: Image.asset(avtoAsset, width: 200,),
              ),
              const SizedBox(width: 21,),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(title, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                        const SizedBox(width: 11,),
                        const Text("Ремонтов: ", style: TextStyle(fontSize: 18),),
                        Text(repairsAmount, style: const TextStyle(fontWeight: FontWeight.bold),),
                        const SizedBox(width: 11,),
                        const Text("Дата последнего ремонта: "),
                        Text(dateLastRepair, style: const TextStyle(fontWeight: FontWeight.bold),),
                        const Spacer(),
                        const Text("Затрачено: "),
                        Text(cost, style: const TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: const BorderRadius.all(Radius.circular(12)),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: Image.asset("assets/profile_default.png").image,
                              ),
                              const SizedBox(width: 11,),
                              Text("Владелец клиент ($rating)",
                                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 21,),
                        Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: const BorderRadius.all(Radius.circular(12)),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.phone, color: Colors.black,),
                              const SizedBox(width: 11,),
                              Text(phoneNumber, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 11,),
            ],
          ),
        ),
      ),
    );
  }
}
