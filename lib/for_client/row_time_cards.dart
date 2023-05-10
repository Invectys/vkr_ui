
import 'package:flutter/material.dart';

class RowTimeCards extends StatelessWidget {
  const RowTimeCards({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(time, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                ),
              ),
            )
        ),
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(time, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                ),
              ),
            )
        ),
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(time, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                ),
              ),
            )
        ),
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(time, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                ),
              ),
            )
        ),
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(time, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                ),
              ),
            )
        ),
        Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Card(
                elevation: 4,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(time, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)
                ),
              ),
            )
        ),
      ],
    );
  }
}
