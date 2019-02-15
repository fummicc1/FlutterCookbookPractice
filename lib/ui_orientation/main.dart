import 'package:flutter/material.dart';

class UIOrientationPage extends StatefulWidget {
  @override
  _UIOrientationPageState createState() => _UIOrientationPageState();
}

class _UIOrientationPageState extends State<UIOrientationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("縦でも横でも幸せになれる？"),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                  "Item $index",
                style: Theme.of(context).textTheme.headline,
              ),
            );
        })
        );
      }),
    );
  }
}
