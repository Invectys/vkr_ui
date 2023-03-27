
import 'package:flutter/material.dart';

class ClientItemVertical extends StatefulWidget {
  const ClientItemVertical({Key? key, required this.name,
    required this.phoneNumber, required this.money, this.axis = Axis.horizontal}) : super(key: key);

  final String name;
  final String phoneNumber;
  final String money;
  final Axis axis;

  @override
  State<ClientItemVertical> createState() => _ClientItemVerticalState();
}

class _ClientItemVerticalState extends State<ClientItemVertical> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6),
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
          padding: EdgeInsets.all(11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: Image.asset("assets/profile_default.png").image,
              ),
              SizedBox(width: 21,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name, style: TextStyle(fontSize: 17),),
                      const SizedBox(height: 4,),
                      Row(
                        children: [
                          const Text("Номер телефона"),
                          const SizedBox(width: 4,),
                          Text(widget.phoneNumber, style: const TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 4,),
                      Row(
                        children: [
                          const Text("Потрачено"),
                          SizedBox(width: 4,),
                          Text(widget.money,),
                        ],
                      ),

                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
