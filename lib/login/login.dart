import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 1,
            child: Image.asset("assets/automology_title.webp",
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            )
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: SizedBox(
                width: 400,
                child: IntrinsicHeight(
                  child: Card(
                    elevation: 14,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          const Text("Авторизация", style: TextStyle(fontSize: 21, fontWeight: FontWeight.normal),),
                          const TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Логин'
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Пароль',
                            ),
                            obscureText: true,
                            autocorrect: false,
                            enableSuggestions: false,
                          ),
                          const SizedBox(height: 11,),
                          TextButton(
                            onPressed: () {

                            },
                            child: Text("Войти")
                          )
                        ],
                      ),
                    )
                  ),
                ),
              ),
            )
          )
        ],
      )
    );
  }
}
