
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/avto/avto_item.dart';

import '../common/pagination_http.dart';
import '../common/search_input.dart';
import '../generated/swagger.swagger.dart';

class Avtos extends StatefulWidget {
  const Avtos({Key? key}) : super(key: key);

  @override
  State<Avtos> createState() => _AvtosState();
}

class _AvtosState extends State<Avtos> {
  @override
  void initState() {
    super.initState();
  }

  final listKey = GlobalKey<PaginationHttpState<AvtoDatabase>>();
  String findAvto= "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  SearchInput(
                    onFindChanged: (val) {
                      findAvto = val;
                      listKey.currentState!.refresh();
                    }, hint: 'поиск по авто',
                  ),
                  SearchInput(
                    onFindChanged: (val) {
                      findAvto = val;
                      listKey.currentState!.refresh();
                    }, hint: 'по владельцу',
                  ),
                  SearchInput(
                    onFindChanged: (val) {
                      findAvto = val;
                      listKey.currentState!.refresh();
                    }, hint: 'по телефону',
                  ),
                  const TextField(),
                  CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.range
                    ),
                    initialValue: [],
                  ),
                  TextButton.icon(
                      onPressed: () {

                      },
                      icon: Icon(Icons.search),
                      label: Text("Искать")
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
                children: const [
                  AvtoItem(
                    avtoAsset: "assets/rangerover1_profile.webp",
                    title: 'Range Rover',
                    repairsAmount: "2",
                    cost: "97 000 руб",
                    dateLastRepair: "25.10.2022",
                    phoneNumber: "+ 7 (977) 277-55-66",
                    rating: "34",
                  ),
                  AvtoItem(
                    avtoAsset: "assets/porshe_profile1.webp",
                    title: 'Porshe',
                    repairsAmount: "1",
                    cost: "140 000 руб",
                    dateLastRepair: "21.10.2022",
                    phoneNumber: "+ 7 (977) 277-55-66",
                    rating: "50",
                  ),
                  AvtoItem(
                    avtoAsset: "assets/audi1_profile.webp",
                    title: 'Audi',
                    repairsAmount: "1",
                    cost: "140 000 руб",
                    dateLastRepair: "21.11.2022",
                    phoneNumber: "+ 7 (541) 401-16-83",
                    rating: "104",
                  ),
                  AvtoItem(
                    avtoAsset: "assets/audi2_profile.webp",
                    title: 'Audi',
                    repairsAmount: "1",
                    cost: "400 000 руб",
                    dateLastRepair: "21.11.2022",
                    phoneNumber: "+ 7 (108) 341-153-25",
                    rating: "200",
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
