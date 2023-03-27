
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/dialogs/new_client_dialog.dart';

class ClientContactsPage extends StatefulWidget {
  const ClientContactsPage({Key? key}) : super(key: key);

  @override
  State<ClientContactsPage> createState() => _ClientContactsPageState();
}

class _ClientContactsPageState extends State<ClientContactsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Card(
              elevation: 21,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Звонки"),
                    leading: Icon(Icons.phone, size: 32,),
                  ),
                  ListTile(
                    title: Text("Whats app"),
                    leading: Image.asset("assets/whatsapp.png"),
                    subtitle: Text("Последнее сообщение"),
                    selected: true,
                  ),
                  ListTile(
                    title: Text("Telegram"),
                    leading: Image.asset("assets/telegram.webp"),
                    subtitle: Text("Последнее сообщение"),
                  ),
                  ListTile(
                    title: Text("Gmail"),
                    leading: Image.asset("assets/gmail.png"),
                    subtitle: Text("Последнее сообщение"),
                  ),
                  ListTile(
                    title: Text("Yandex"),
                    leading: Image.asset("assets/yandex.png", width: 49,),
                    subtitle: Text("Последнее сообщение"),
                  ),
                  ListTile(
                    title: Text("Mail"),
                    leading: Image.asset("assets/email.png", width: 49,),
                    subtitle: Text("Последнее сообщение"),
                  )
                ],
              ),
            )
          ),
          const Calls(),
          //const ClientNotFoundedWithChat()
        ],
      )
    );
  }
}


class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      fit: FlexFit.tight,
      child: Column(
        children: [
          Card(
            elevation: 11,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 11),
              child: Row(
                children: [
                  const Text("Клиент не найден", ),
                  TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (_) {
                          return const NewClientDialog();
                        });
                      },
                      child: const Text("Добавить")
                  ),
                  TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (_) {
                          return const NewClientDialog();
                        });
                      },
                      child: const Text("Привязать к существующему")
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
                children: [
                  DateDivider(date: "24 марта",),
                  CallItem(
                    weCall: false,
                    skipped: true,
                    time: "16:04"
                  ),
                  CallItem(
                    weCall: true,
                    skipped: false,
                    time: "16:05"
                  )
                ],
              )
          ),
        ],
      )
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


class ClientNotFoundedWithChat extends StatelessWidget {
  const ClientNotFoundedWithChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 4,
        fit: FlexFit.tight,
        child: Column(
          children: [
            Card(
              elevation: 11,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                child: Row(
                  children: [
                    const Text("Клиент не найден", ),
                    TextButton(
                        onPressed: () {
                          showDialog(context: context, builder: (_) {
                            return const NewClientDialog();
                          });
                        },
                        child: const Text("Добавить")
                    ),
                    TextButton(
                        onPressed: () {
                          showDialog(context: context, builder: (_) {
                            return const NewClientDialog();
                          });
                        },
                        child: const Text("Привязать к существующему")
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView(
                  children: const [
                    DateDivider(date: "24 марта",),
                    Message(
                      height: 100,
                      isOurMessage: false,
                      time: "12:07",
                      messsage: "Здравствуйте!",
                    ),
                    Message(
                      height: 100,
                      isOurMessage: true,
                      time: "12:09",
                      messsage: "Здравствуйте!",
                    ),
                    Message(
                        height: 200,
                        time: "13:10",
                        messsage: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        isOurMessage: false
                    ),
                    DateDivider(date: "25 марта",),
                    Message(
                      height: 100,
                      isOurMessage: true,
                      time: "14:10",
                      messsage: "Понятно",
                    ),
                  ],
                )
            ),
            Card(
              elevation: 12,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(Icons.file_present_rounded, size: 26, color: Colors.blue,)
                    ),
                    IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(Icons.mic, size: 26, color: Colors.blue,)
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {

                        },
                      ),
                    ),
                    IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(Icons.send, size: 26, color: Colors.blue,)
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}


class Message extends StatelessWidget {
  const Message({Key? key,
    required this.time,
    required this.messsage,
    required this.isOurMessage,
    required this.height
  }) : super(key: key);

  final String messsage;
  final String time;
  final bool isOurMessage;
  final double height;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(isOurMessage)
          const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: SizedBox()
          ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            height: height,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(21)
            ),
            margin: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 11),
            child: SizedBox.expand(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: Image.asset("assets/profile_default.png").image,
                            ),
                            const SizedBox(width: 8,),
                            Text(isOurMessage ? "Вы" : "Клиент",
                              style: const TextStyle(fontSize: 18, color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(height: 11,),
                        Text(messsage, style: const TextStyle(color: Colors.white),),
                      ],
                    )
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Text(time, style: const TextStyle(fontSize: 12, color: Colors.white54),),
                  )
                ],
              ),
            )
          ),
        ),
        if(!isOurMessage)
          const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: SizedBox()
          ),
      ],
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



