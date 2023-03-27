import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/clients/full_client_information.dart';
import 'package:trem_automology_flutter/contacts/client_contacts_page.dart';

import 'main/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TremAutomology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FullClientInformation(),
    );
  }
}