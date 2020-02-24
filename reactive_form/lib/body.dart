import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'controller.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key key}) : super(key: key);

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
    final controller = GetIt.I.get<Controller>();

    return SingleChildScrollView(
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
    );
  }
}
