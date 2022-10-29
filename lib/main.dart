
import 'package:appflutter/Home.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => Home()
        },
      theme: ThemeData(
        primarySwatch: Colors.red,
      )
    );
  }
}


