import 'package:flutter/material.dart';

class WalkThroughItem extends StatelessWidget {
  final String description;
  final String img;
  const WalkThroughItem({
    Key? key,
    required this.description,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(description),
      ],
    );
  }
}
