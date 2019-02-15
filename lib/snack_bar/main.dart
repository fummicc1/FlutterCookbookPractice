import 'package:flutter/material.dart';

class ShowSnackBarPage extends StatefulWidget {
  @override
  _ShowSnackBarPageState createState() => _ShowSnackBarPageState();
}

class _ShowSnackBarPageState extends State<ShowSnackBarPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  void _showSnackBar() {
    final snackBar = SnackBar(
      content: Text("this is a sample for snackBar"),
      action: SnackBarAction(
          label: "Nice!",
          onPressed: () {
            print("dismiss");
          }),
    );

    _scaffoldKey.currentState.showSnackBar(snackBar);

//    Scaffold.of(context).showSnackBar(snackBar); NO Scaffold Under init floatingActionButton.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("snackBar Demo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSnackBar();
        },
        child: Text("S"),
      ),
      body: Container(
        child: Text("いえい"),
      ),
    );
  }
}
