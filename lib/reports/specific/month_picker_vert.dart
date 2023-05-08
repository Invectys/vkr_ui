
import 'package:flutter/material.dart';

class MonthsPickerVert extends StatefulWidget {
  const MonthsPickerVert({Key? key}) : super(key: key);

  @override
  State<MonthsPickerVert> createState() => _MonthsPickerStateVert();
}

class _MonthsPickerStateVert extends State<MonthsPickerVert> {

  var colorSelected = Colors.blue[200];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("март", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("апрель", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: colorSelected,
                child: Text("май", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: colorSelected,
                child: Text("июнь", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: colorSelected,
                child: Text("июль", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: colorSelected,
                child: Text("август", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("сентябрь", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("октябрь", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("ноябрь", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("декабрь", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("январь", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: Text("февраль", style: TextStyle(fontSize: 21),),
              ),
            ),
          ],
        ),
        SizedBox(height: 4,),
        Column(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: const Text("весна", style: TextStyle(fontSize: 17),),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: colorSelected,
                child: const Text("лето", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: const Text("осень", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: const Text("зима", style: TextStyle(fontSize: 21),),
              ),
            )
          ],
        ),
        SizedBox(height: 4,),
        Column(
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: const Text("2020", style: TextStyle(fontSize: 17),),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: const Text("2021", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: Colors.blue[100],
                child: const Text("2022", style: TextStyle(fontSize: 21),),
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: MaterialButton(
                onPressed: () {

                },
                color: colorSelected,
                child: const Text("2023", style: TextStyle(fontSize: 21),),
              ),
            )
          ],
        ),
      ],
    );
  }
}
