import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuggestionWidget extends StatelessWidget {
  String image;
  // ignore: non_constant_identifier_names
  String Name;

  SuggestionWidget({
    // ignore: non_constant_identifier_names
    required this.Name,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(image)),
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(20)),
        child: Align(alignment: Alignment.bottomCenter, child: Text(Name)),
      ),
    );
  }
}
