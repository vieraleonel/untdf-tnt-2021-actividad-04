import 'package:flutter/material.dart';

import 'package:actividad_04/constants.dart';
import 'package:actividad_04/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: BACKGROUND_COLOR,
        primaryColor: PRIMARY_COLOR,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: TEXT_COLOR),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ROUTE_NAMES['HOME'],
      routes: routes,
    );
  }
}
