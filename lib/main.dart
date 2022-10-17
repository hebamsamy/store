import 'package:flutter/material.dart';
import 'package:store/ListScreen.dart';
import 'package:store/MainScreen.dart';
import 'package:store/ProductsScreen.dart';
import 'package:store/ProfileScreen.dart';
import './HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          canvasColor: Colors.purple[50],
          fontFamily: ""),
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/home": (context) => HomeScreen(),
        "/profile": (context) => ProfileScreen(),
        "/list": (context) => ListScreen(),
        "/product": (context) => ProductScreen(),
      },
    );
  }
}
