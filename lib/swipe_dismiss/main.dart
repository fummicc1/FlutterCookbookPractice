import 'package:flutter/material.dart';

class SwipeDismissPage extends StatefulWidget {
  @override
  _SwipeDismissPageState createState() => _SwipeDismissPageState();
}

class _SwipeDismissPageState extends State<SwipeDismissPage> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("スワイプでセルの削除が可能だよ！"),
      ),
      body: ListView.builder(
          itemCount: items.length, itemBuilder: (context, index) {
            return Dismissible(
                key: Key(items[index]),
                child: ListTile(
                  title: Text((items[index])),
                ),
              onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });

                  _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text("item dismissed}"),
                  ));
              },
              background: Container(color: Colors.red,),
            );
      }),
    );
  }
}
