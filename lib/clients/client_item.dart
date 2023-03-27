
import 'package:flutter/material.dart';

import '../generated/swagger.swagger.dart';
import 'full_client_information.dart';

class ClientItem extends StatefulWidget {
  const ClientItem({Key? key, required this.name,
    required this.phoneNumber, required this.money, this.axis = Axis.horizontal}) : super(key: key);

  final String name;
  final String phoneNumber;
  final String money;
  final Axis axis;

  @override
  State<ClientItem> createState() => _ClientItemState();
}

class _ClientItemState extends State<ClientItem> {
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
                child: Wrap(
                  direction: widget.axis,
                  children: [
                    Text(widget.name),
                    SizedBox(width: 21,),
                    const Text("Номер телефона"),
                    SizedBox(width: 11,),
                    Text(widget.phoneNumber, style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text("Потрачено"),
                    SizedBox(width: 11,),
                    Text(widget.money, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
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
