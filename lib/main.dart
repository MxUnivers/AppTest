import 'package:appflutter/GroupAlert.dart';
import 'package:appflutter/RecipeScreem.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => RecipeScreem(),
          '/second': (context) => const  GroupAlert() ,
        },
      theme: ThemeData(
        primarySwatch: Colors.red,
      )
    );
  }
}


