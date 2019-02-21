import 'package:flutter/material.dart';

class BasicListPage extends StatefulWidget {
  @override
  _BasicListPageState createState() => _BasicListPageState();
}

class _BasicListPageState extends State<BasicListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リストビューだよーー"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.call),
            title: Text("電話"),
          ),
          ListTile(
            leading: Icon(Icons.print),
            title: Text("印刷"),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("写真"),
          ),
        ],
      ),
    );
  }
}
