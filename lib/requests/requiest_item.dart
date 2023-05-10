
import 'package:flutter/material.dart';


class RequestItem extends StatefulWidget {
  const RequestItem({Key? key}) : super(key: key);


  @override
  State<RequestItem> createState() => _RequestItemState();
}

class _RequestItemState extends State<RequestItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: Image.asset("assets/profile_default.png").image,
              ),
              SizedBox(width: 21,),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("12.04.23 18:00", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                        const SizedBox(width: 5,),
                        ElevatedButton(onPressed: () {}, child: const Text("Информация о клиенте")),
                        const SizedBox(width: 5,),
                        ElevatedButton(onPressed: () {}, child: const Text("Связаться")),
                        const SizedBox(width: 15,),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.delete), color: Colors.red,)
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: const Text("Одобрить", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 19),))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
