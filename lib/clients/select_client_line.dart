
import 'package:flutter/material.dart';

class SelectClientLine extends StatelessWidget {
  SelectClientLine({Key? key, required this.clientName}) : super(key: key);

  String clientName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(clientName),
    );
  }
}
