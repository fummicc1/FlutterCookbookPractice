import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
        child: Column(
          children: <Widget>[
            Image.network('https://picsum.photos/250?image=9'),
            FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://picsum.photos/250?image=9')
          ],
        ),
      ),
    );
  }
}

// this also supports gif animations.
//// Imageはローカルのアセットからでも取得できる。
//class AssetImagePage extends StatefulWidget {
//  @override
//  _AssetImagePageState createState() => _AssetImagePageState();
//}
//
//class _AssetImagePageState extends State<AssetImagePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: FadeInImage.assetNetwork(placeholder: null, image: null),
//    );
//  }
//}


class CachedImageSessionPage extends StatefulWidget {
  @override
  _CachedImageSessionPageState createState() => _CachedImageSessionPageState();
}

class _CachedImageSessionPageState extends State<CachedImageSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("キャッシュ表示"),
      ),
      body: Center(
        child: CachedNetworkImage(
          placeholder: CircularProgressIndicator(),
          imageUrl: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
