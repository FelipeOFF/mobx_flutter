import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MobX"),
        ),
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 80), child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: controller.changeName,
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(labelText: 'Sobrenome'),
                onChanged: controller.changeLastName,
              ),
              SizedBox(height: 20,),
              Observer(
                builder: (_) {
                  return Text('${controller.completName}');
                },
              )
            ],
          ),
        ),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
