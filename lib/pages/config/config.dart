import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sillysale/pages/home/home.dart';
import 'package:sillysale/provider/provider.dart';

class ConfigApp extends StatefulWidget {
  @override
  _ConfigAppState createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: Providers.providers(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "SillySale",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
