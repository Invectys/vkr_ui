
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/for_client/your_avto.dart';

class ForClientRepairStatus extends StatelessWidget {
  const ForClientRepairStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Ваши автомобили", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
        Expanded(
            child: ListView(
              children: const [
                YourAvto(
                  avtoAsset: "assets/rangerover1_profile.webp",
                  title: 'Range rover',
                  repairsAmount: "1",
                  cost: "120 000 руб",
                  dateLastRepair: "25.10.2022",
                  phoneNumber: "+7 (977) 277-55-66",
                  rating: "10",
                )
              ],
            )
        )
      ],
    );
  }
}
