import 'package:flutter/material.dart';
import 'package:wala/items/walk_through_item.dart';
import 'package:wala/value/app_data.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);
  static const routeName = '/walk-through-screen';

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0);
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemCount: AppData.listWalkThroughItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Text("description.toString()");
        },
      ),
    );
  }
}
