import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:observable_list/app/models/item_model.dart';
import 'package:observable_list/app/page/home_controller.dart';

import 'components/item_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _dialog() {
    var model = ItemModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar item"),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Novo item'),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  controller.addItem(model);
                  Navigator.pop(context);
                },
                child: Text("Salvar"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: "Pesquisar..."),
          onChanged: controller.setFilter,
        ),
        actions: <Widget>[
          IconButton(
            icon: Observer(builder: (_) {
              return Text("${controller.totalCehcked}");
            }),
            onPressed: () {},
          )
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.listWithWhere.length,
            itemBuilder: (_, index) {
              var item = controller.listWithWhere[index];
              return ItemWidget(
                item: item,
                removeClicked: controller.removeItem(item),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _dialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
