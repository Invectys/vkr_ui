
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({Key? key, required this.onFindChanged, required this.hint}) : super(key: key);

  final String hint;

  final Function(String find) onFindChanged;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search,),
          ),
          SizedBox(width: 11,),
          Expanded(
            child: TextField(
              onChanged: (val) {
                widget.onFindChanged(val);
              },
              decoration: new InputDecoration.collapsed(
                  hintText: widget.hint
              ),
            ),
          ),
        ],
      ),
    );
  }
}
