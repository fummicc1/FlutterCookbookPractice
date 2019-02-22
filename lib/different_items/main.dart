import 'package:flutter/material.dart';
import 'item.dart';

class PresentDifferentTypeItems extends StatefulWidget {
  @override
  _PresentDifferentTypeItemsState createState() =>
      _PresentDifferentTypeItemsState();
}

class _PresentDifferentTypeItemsState extends State<PresentDifferentTypeItems> {
  final items = List<ListItem>.generate(1200, (index) {
    if (index % 6 == 0) {
      return HeadingItem("Heading $index");
    } else {
      return MessageItem("Sender $index", "Message body $index");
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("いろんなアイテム"),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                if (item is HeadingItem) {
                  return ListTile(
                    title: Text(item.heading,
                        style: Theme.of(context).textTheme.headline),
                  );
                } else if (item is MessageItem) {
                  return ListTile(
                    title: Text(item.sender),
                    subtitle: Text(item.body),
                  );
                }
              })),
    );
  }
}
