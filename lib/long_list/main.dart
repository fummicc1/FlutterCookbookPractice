import 'package:flutter/material.dart';

class LongListPage extends StatefulWidget {
  @override
  _LongListPageState createState() => new _LongListPageState();
}

class _LongListPageState extends State<LongListPage> {
  final items = List<String>.generate(100, (index) {
    return "Item $index";
  });

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("長いリストビューーーー"),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
