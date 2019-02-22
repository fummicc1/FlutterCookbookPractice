import 'package:flutter/material.dart';
import 'form_validator/main.dart';
import 'ripple/main.dart';
import 'ui_orientation/main.dart';
import 'handle_tap/main.dart';
import 'swipe_dismiss/main.dart';
import 'image_from_internet/main.dart';
import 'swipe_dismiss/main.dart';
import 'basic_list/main.dart';
import 'horizontal_list/main.dart';
import 'different_items/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PresentDifferentTypeItems(),
    );
  }
}
