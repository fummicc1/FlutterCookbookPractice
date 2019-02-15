import 'package:flutter/material.dart';

class FormValidatePage extends StatefulWidget {
  @override
  _FormValidatePageState createState() => _FormValidatePageState();
}

class _FormValidatePageState extends State<FormValidatePage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("フォーム"),
      ),
      body: Form(
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
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Processing Data")));
                }
              },
              child: Text("Submit"),
            )
          ],
        )
      ),
    );
  }
}
