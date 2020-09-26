import 'package:flutter/material.dart';
import 'package:sillysale/pages/home/home.dart';

class ConfigApp extends StatefulWidget {
  @override
  _ConfigAppState createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SillySale",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}