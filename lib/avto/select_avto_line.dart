
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';

class SelectAvtoLine extends StatelessWidget {
  const SelectAvtoLine({Key? key, required this.avto, required this.onSelected}) : super(key: key);

  final Function(AvtoDatabase selected) onSelected;
  final AvtoDatabase avto;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: MaterialButton(
        onPressed: () {
          onSelected(avto);
        },
        child: ListTile(
          leading: const FlutterLogo(size: 56.0),
          title: Text(avto.brand!),
          subtitle: Text(avto.owner!.name!),
          trailing: const Icon(Icons.more_vert),
        ),
      ),
    );
  }
}
