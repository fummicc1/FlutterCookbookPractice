import 'package:flutter/material.dart';

class ImageSessionPage extends StatefulWidget {
  @override
  _ImageSessionPageState createState() => _ImageSessionPageState();
}

class _ImageSessionPageState extends State<ImageSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("写真をインターネットでダウンロード"),
      ),
      body: Center(
        child: Image.network('https://picsum.photos/250?image=9'), // this also supports gif animations.
      ),
    );
  }
}
