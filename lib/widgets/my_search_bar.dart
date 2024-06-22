import 'package:flutter/material.dart';

class MySearchBarWidget extends StatelessWidget {
  const MySearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.70,
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
