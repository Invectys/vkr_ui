
import 'package:flutter/material.dart';

class CubicProgress extends StatefulWidget {
  const CubicProgress({Key? key, required this.finalCount}) : super(key: key);

  final int finalCount;

  @override
  State<CubicProgress> createState() => _CubicProgressState();
}

class _CubicProgressState extends State<CubicProgress> {

  int currentProgress = 0;

  void nextState() {
    setState(() {
      currentProgress += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(var i = 0; i < widget.finalCount; i++)
          Container(
            width: 20,
            height: 26,
            color: currentProgress > i ? Colors.green : Colors.grey,
            margin: const EdgeInsets.all(1),
          ),

      ],
    );
  }
}
