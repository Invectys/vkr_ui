
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/common/pagination_http.dart';
import 'package:trem_automology_flutter/common/search_input.dart';
import 'package:trem_automology_flutter/dialogs/new_client_dialog.dart';
import 'package:trem_automology_flutter/generated/swagger.swagger.dart';
import 'package:trem_automology_flutter/requests/requiest_item.dart';

class RequestsToRepair extends StatefulWidget {
  const RequestsToRepair({Key? key}) : super(key: key);

  @override
  State<RequestsToRepair> createState() => _RequestsToRepairState();
}

class _RequestsToRepairState extends State<RequestsToRepair> {

  final listKey = GlobalKey<PaginationHttpState<ClientDatabase>>();
  String findClient = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        children: [
          SizedBox(height: 11,),
          Row(
            children: const [
              Text("Заявки на первичный осмотр", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(height: 11,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RequestItem( ),
                ],
              )
          )
        ],
      ),
    );
  }
}
