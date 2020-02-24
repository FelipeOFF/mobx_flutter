import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'controller.dart';
import 'home.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Controller>(Controller());

  return runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MobX',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
