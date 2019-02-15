import 'package:flutter/material.dart';

class RipplePage extends StatefulWidget {
  @override
  _RipplePageState createState() => new _RipplePageState();
}

class _RipplePageState extends State<RipplePage> {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("ウェーブボタン"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("インクウェル")));
          },
          child: Text("インクウェル"),
        ),
      ),
    );
  }
}
