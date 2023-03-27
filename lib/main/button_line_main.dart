
import 'package:flutter/material.dart';

class ButtonLineMain extends StatelessWidget {
  ButtonLineMain({Key? key,
    required this.title, required this.icon,
    required this.onPressed, this.color = Colors.blue}) : super(key: key);

  Color color;
  String title;
  IconData icon;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(top: 11, bottom: 11),
      onPressed: onPressed,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Icon(icon, color: color,)
          ),
          Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Text(title, style: TextStyle(fontSize: 17, color: color),)
          ),
        ],
      ),
    );
  }
}
