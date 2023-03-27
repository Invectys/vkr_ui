
import 'package:flutter/material.dart';

class HistoryRepairLine extends StatelessWidget {
  const HistoryRepairLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(11),
      child: MaterialButton(
        onPressed: () {

        },
        child: Container(
            height: 90,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 11),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {

                        },
                        child: Text("", style: const TextStyle(fontSize: 21, color: Colors.black),)
                    ),
                    const SizedBox(width: 21,),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text(""),
                    ),
                    Spacer(),
                    Text("Стадия "),
                  ],
                ),
                Row(
                  children: [
                    const Text("21.02 12:00", style: TextStyle(fontSize: 12),),
                    const Spacer(),
                    Text("100 руб", style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
