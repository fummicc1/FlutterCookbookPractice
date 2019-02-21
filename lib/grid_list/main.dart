import 'package:flutter/material.dart';

class GridListPage extends StatefulWidget {
  @override
  _GridListPageState createState() => _GridListPageState();
}

class _GridListPageState extends State<GridListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("グリッドビュー"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                "$index",
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
