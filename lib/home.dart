import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text("MobX"),
         ),
         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                 '$counter',
                 style: Theme.of(context).textTheme.display1,
               )
             ],
           ),
         ),
       ),
    );
  }
}