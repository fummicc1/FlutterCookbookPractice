import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("タブバーの登場やで"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            )
          ]),
        ),
        body: TabBarView(children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_bike),
          Icon(Icons.directions_bus)
        ])
      ),
    );
  }
}
