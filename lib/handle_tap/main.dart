import 'package:flutter/material.dart';


final _scaffoldKey = GlobalKey<ScaffoldState>();

class HandlingTapPage extends StatefulWidget {
  @override
  _HandlingTapPageState createState() => _HandlingTapPageState();
}

class _HandlingTapPageState extends State<HandlingTapPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("タップを検知します。"),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}


class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final _snackBar = SnackBar(content: Text("Tap"));

        _scaffoldKey.currentState.showSnackBar(_snackBar);

      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text("タップしてみて！"),
      ),
    );
  }
}
