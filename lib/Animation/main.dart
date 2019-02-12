import 'package:flutter/material.dart';

class MyAnimationPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAnimationPageState();
  }
}

class MyAnimationPageState extends State<MyAnimationPage> {

  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: AnimatedOpacity(
            opacity: _visible ? 1.0 :0.0,
            duration: Duration(milliseconds: 500),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

        setState(() {
          _visible = !_visible;
        });

      }),
    );
  }
}