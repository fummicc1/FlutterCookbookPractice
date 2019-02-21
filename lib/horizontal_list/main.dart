import 'package:flutter/material.dart';

class HorizontalListPage extends StatefulWidget {
  @override
  _HorizontalListPageState createState() => _HorizontalListPageState();
}

class _HorizontalListPageState extends State<HorizontalListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("水平方向にスクロールできるスクロールビューだよーーー"),
        ),
        body: Container(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
                child: Text("赤",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 100,
                    )),
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
                child: Text("青",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 100,
                    )),
              ),
              Container(
                width: 160.0,
                color: Colors.green,
                child: Text("緑",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 100,
                    )),
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
                child: Text("黄色",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                    )),
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
                child: Text("オレンジ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    )),
              ),
            ],
          ),
        ));
  }
}
