import 'package:ecommerce_design/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatefulWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  _EcommerceAppState createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {"/home": (context) => Home()},
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Home(),
        ),
      ),
    );
  }
}
