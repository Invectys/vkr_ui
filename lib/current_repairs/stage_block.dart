
import 'package:flutter/material.dart';

class StageBlock extends StatelessWidget {
  const StageBlock({Key? key,
    required this.assetOne,
    required this.title
  }) : super(key: key);

  final String assetOne;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.blueAccent,
      child: Column(
        children: [
          SizedBox(height: 6,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 4,),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 21),),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.edit, color: Colors.white,)),
              SizedBox(width: 6,),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete, color: Colors.red,))
            ],
          ),
          const SizedBox(height: 3,),
          Expanded(child: Image.asset(assetOne, fit: BoxFit.cover,),),
          Row(
            children: [
              Checkbox(value: true, onChanged: (_) {}),
              const Text("Показывать в истории", style: TextStyle(color: Colors.white),),
            ],
          ),

        ],
      ),
    );
  }
}
