
import 'package:flutter/material.dart';

class YourAvto extends StatelessWidget {
  const YourAvto({Key? key,
    required this.avtoAsset,
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
      child: Card(
        elevation: 11,
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
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(title, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                            const SizedBox(width: 11,),
                          ],
                        ),
                        SizedBox(height: 7,),
                        Row(
                          children: const [
                            Text("Статус: ", style: TextStyle(fontSize: 19),),
                            Text("В ремонте", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                          ],
                        ),
                        Row(
                          children: [
                            const Text("Ремонтов: ", style: TextStyle(fontSize: 18),),
                            Text(repairsAmount, style: const TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                          const Text("Дата последнего ремонта: "),
                          Text(dateLastRepair, style: const TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 21,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text("Информация", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        const SizedBox(height: 11,),
                        Row(
                          children: [
                            const Text("22.04.23 ", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                            const Text("Рабираем кузов для реставрации и перекраски поврежденных деталей"),
                            TextButton.icon(
                              onPressed: () {

                              },
                              icon: Icon(Icons.image, size: 32,),
                              label: Text("Прикрепленные фото"),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text("24.04.23 ", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                            const Text("Реставрируем дефекты"),
                            TextButton.icon(
                              onPressed: () {

                              },
                              icon: Icon(Icons.image, size: 32,),
                              label: Text("Прикрепленные фото"),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text("25.04.23 ", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
                            const Text("Красим детали и ждем высыхания"),
                            TextButton.icon(
                              onPressed: () {

                              },
                              icon: Icon(Icons.image, size: 32,),
                              label: Text("Прикрепленные фото"),
                            )
                          ],
                        ),
                      ],
                    ),
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
