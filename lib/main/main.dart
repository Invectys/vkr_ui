
import 'package:flutter/material.dart';
import 'package:trem_automology_flutter/dashboard/dashboard.dart';
import '../avto/avtos.dart';
import '../clients/top_clients.dart';
import '../contacts/all_contacts_page.dart';
import '../contacts/client_contacts_page.dart';
import '../current_repairs/current_repairs.dart';
import '../history/history_of_repairs.dart';
import '../plans/plans.dart';
import '../reports/reports.dart';
import 'button_line_main.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  Widget _currentPage = const Plans();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 300,
            child: Card(
              elevation: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ListTile(
                    title: Text("Trem Automology"),
                    leading: Icon(Icons.car_repair, size: 32,),
                  ),
                  const Divider(),
                  ButtonLineMain(
                    title: "Домашняя страница",
                    icon: Icons.home,
                    onPressed: () {
                      setState(() {
                        _currentPage = const Dashboard();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "Текущие ремонты",
                    icon: Icons.car_crash,
                    onPressed: () {
                      setState(() {
                        _currentPage = const CurrentRepairs();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "Планировщик",
                    icon: Icons.timelapse,
                    onPressed: () {
                      setState(() {
                        _currentPage = const Plans();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "Контакты",
                    icon: Icons.contacts,
                    onPressed: () {
                      setState(() {
                        _currentPage = const AllContactsPage();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "Клиенты",
                    icon: Icons.people,
                    onPressed: () {
                      setState(() {
                        _currentPage = const TopClients();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "Автомобили",
                    icon: Icons.car_rental,
                    onPressed: () {
                      setState(() {
                        _currentPage = const Avtos();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "История ремонтов",
                    icon: Icons.history,
                    onPressed: () {
                      setState(() {
                        _currentPage = const HistoryOfRepairs();
                      });
                    },
                  ),
                  ButtonLineMain(
                    title: "Отчеты",
                    icon: Icons.list_alt,
                    onPressed: () {
                      setState(() {
                        _currentPage = const Reports();
                      });
                    },
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: const BorderRadius.all(Radius.circular(12))
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: Image.asset("assets/profile_default.png").image,
                        ),
                        const SizedBox(width: 31,),
                        const Text("Логин", style: TextStyle(fontSize: 17),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 7,),
                  ButtonLineMain(
                    title: "Выйти",
                    icon: Icons.exit_to_app,
                    color: Colors.grey,
                    onPressed: () {
                    },
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
            )
          ),
          Expanded(
            child: _currentPage
          )
        ],
      ),
    );
  }
}
