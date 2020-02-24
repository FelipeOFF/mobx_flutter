import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Controller();

  _textField({String labelText, onChanged, String Function() onErrorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: onErrorText == null ? null : onErrorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Formulario"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Observer(builder: (_) {
                  return _textField(
                    labelText: "Nome",
                    onChanged: controller.client.changeName,
                    onErrorText: controller.validateName,
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                Observer(builder: (_) {
                  return _textField(
                    labelText: "Email",
                    onChanged: controller.client.changeEmail,
                    onErrorText: controller.validateEmail,
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                Observer(builder: (_) {
                  return _textField(
                    labelText: "CPF",
                    onChanged: controller.client.changeCpf,
                    onErrorText: controller.validateCpf,
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                Observer(builder: (_) {
                  return RaisedButton(
                    onPressed: controller.isValid ? () {} : null,
                    child: Text("Salvar"),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
