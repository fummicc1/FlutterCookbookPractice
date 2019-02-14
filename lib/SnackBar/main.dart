import 'package:flutter/material.dart';

class ShowSnackBarPage extends StatefulWidget {
  @override
  _ShowSnackBarPageState createState() => _ShowSnackBarPageState();
}

class _ShowSnackBarPageState extends State<ShowSnackBarPage> {
  void _showSnackBar() {
    final snackBar = SnackBar(
      content: Text("this is a sample for snackBar"),
      action: SnackBarAction(
          label: "Nice!",
          onPressed: () {
            print("dismiss");
          }),
    );
    
    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
