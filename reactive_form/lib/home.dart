import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'body.dart';
import 'controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Observer(builder: (_) {
            return Text(controller.isValid
                ? "Formulario validado"
                : "Formulario não validado");
          }),
        ),
        body: BodyWidget(),
      ),
    );
  }
}
