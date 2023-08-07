import 'package:flutter/material.dart';
import 'Pages/login.dart';

class NRApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Life', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange,
      ),
      home: const login(),
    );
  }
}