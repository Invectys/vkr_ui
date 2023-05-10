
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({Key? key,
    required this.assetOne,
    required this.title
  }) : super(key: key);

  final String assetOne;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(11),
        child: Column(
          children: [
            const Text("Вмятина на кузове", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
            const SizedBox(height: 6,),
            const SizedBox(height: 3,),
            Expanded(child: Image.asset(assetOne, fit: BoxFit.cover,),),
            Row(
              children: const [
                Text("Range Rover 2017", style: TextStyle(fontSize: 17),),
              ],
            ),
            Row(
              children: const [
                Icon(Icons.monetization_on),
                Text("Стоимость 100 000 руб", style: TextStyle(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(onPressed: () {}, icon: Icon(Icons.description), label: Text("Подробнее",)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
