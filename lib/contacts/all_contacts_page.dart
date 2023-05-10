
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/dialogs/new_client_dialog.dart';

class AllContactsPage extends StatelessWidget {
  const AllContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DateDivider(date: "24 марта",),
        CallItem(
            weCall: false,
            skipped: true,
            time: "16:04"
        ),
        MessageContact(time: '16:06', messengerAsset: "assets/telegram.webp", client: "Клиент", showAddMe: true,),
        MessageContact(time: '16:10', messengerAsset: "assets/telegram.webp", client: "Клиент 2"),
        MessageContact(time: '16:11', messengerAsset: "assets/whatsapp.png", client: "Клиент"),
        CallItem(
            weCall: false,
            skipped: false,
            time: "17:00"
        ),
        MessageContact(time: '18:11', messengerAsset: "assets/gmail.png", client: "Клиент 3"),

      ],
    );
  }
}


class CallItem extends StatelessWidget {
  const CallItem({Key? key, required this.skipped, required this.time, required this.weCall}) : super(key: key);

  final String time;
  final bool skipped;
  final bool weCall;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 11,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
          child: Row(
            children: [
              Text(weCall? "Мы позвонили" : "Нам позвонил"),
              const SizedBox(width: 11,),
              CircleAvatar(
                backgroundImage: Image.asset("assets/profile_default.png").image,
              ),
              const SizedBox(width: 11,),
              const Text("Клиент", style: TextStyle(),),
              const SizedBox(width: 21,),
              Icon(Icons.phone, color: skipped? Colors.red : Colors.green, size: 32,),
              const SizedBox(width: 11,),
              Text(skipped? "Пропущенный звонок" : "Принятый звонок", style: TextStyle(color: skipped? Colors.red : Colors.green),),
              const SizedBox(width: 21,),
              Text(time, style: TextStyle(color: skipped? Colors.red : Colors.green, fontWeight: FontWeight.bold),),
              if(skipped == false)
                Row(
                  children: const [
                    SizedBox(width: 21,),
                    Text("Длился", style: TextStyle(color: Colors.green),),
                    SizedBox(width: 4,),
                    Text("11 минут", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
                    SizedBox(width: 21,),
                  ],
                )
            ],
          )
      ),
    );
  }
}


class MessageContact extends StatelessWidget {
  const MessageContact({Key? key, required this.time, required this.messengerAsset, required this.client, this.showAddMe = false}) : super(key: key);

  final String client;
  final String messengerAsset;
  final String time;
  final bool showAddMe;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 11,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
          child: Row(
            children: [
              const Text("Новое сообщение"),
              const SizedBox(width: 11,),
              CircleAvatar(
                backgroundImage: Image.asset("assets/profile_default.png").image,
              ),
              const SizedBox(width: 11,),
              Text(client, style: TextStyle(),),
              const SizedBox(width: 11,),
              Image.asset(messengerAsset, width: 35, height: 35,),
              const SizedBox(width: 21,),
              const Icon(Icons.message, color: Colors.grey, size: 32,),
              const SizedBox(width: 21,),
              Text(time, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              if(showAddMe)
                TextButton.icon(onPressed: () {
                  showDialog(context: context, builder: (_) {
                    return const NewClientDialog();
                  });
                }, icon: Icon(Icons.add), label: Text("Клиент не добавлен. Добавить"))
            ],
          )
      ),
    );
  }
}

class DateDivider extends StatelessWidget {
  const DateDivider({Key? key, required this.date}) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 21),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(date, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black54),),
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Divider()
        ),
      ],
    );
  }
}
