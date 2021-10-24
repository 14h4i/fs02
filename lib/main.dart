import 'package:flutter/material.dart';
import 'package:fs02/values/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FS01 L02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
      initialRoute: AppRoutes.homePage,
      routes: AppRoutes(context).routes,
    );
  }
}
