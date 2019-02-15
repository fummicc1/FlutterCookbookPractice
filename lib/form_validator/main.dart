import 'package:flutter/material.dart';

class FormValidatePage extends StatefulWidget {
  @override
  _FormValidatePageState createState() => _FormValidatePageState();
}

class _FormValidatePageState extends State<FormValidatePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("フォーム"),
        ),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'テキストを入力してください。';
                      } else if (value.length <= 6) {
                        return "文字数が少なすぎます。";
                      }
                    },
                    controller: textController,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text("Processing Data"),
                          action: SnackBarAction(
                              label: "表示",
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text(textController.text),
                                      );
                                    });
                              }),
                        ));
                      }
                    },
                    child: Text("Submit"),
                  )
                ],
              )),
        ));
  }
}
