


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ClientAuth extends StatefulWidget {
  const ClientAuth({Key? key}) : super(key: key);

  @override
  State<ClientAuth> createState() => _ClientAuthState();
}

class _ClientAuthState extends State<ClientAuth> {
  String phoneNumber = "";
  String clientName = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        height: 250,
        child: Card(
          elevation: 21,
          child: Padding(
            padding: const EdgeInsets.all(21),
            child: Column(
              children: [
                const Text("Подтверждение личности клиента", style: TextStyle(fontSize: 20),),
                const SizedBox(height: 5,),
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Номер телефона"
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {

                      },
                      icon: const Icon(Icons.send, color: Colors.blue,),
                      label: const Text("Отправить код подтверждения"),
                    ),
                  ],
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Код подтверждения"
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () async {

                  },
                  icon: const Icon(Icons.login),
                  label: const Text("Проверить и войти", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
