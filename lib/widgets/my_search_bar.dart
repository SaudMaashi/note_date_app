import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextField(
            decoration: const InputDecoration(
                hintText: "Search for notes", border: InputBorder.none),
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }
}
