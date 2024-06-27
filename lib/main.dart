import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:fasal_sahayak/Starting_page.dart';
//import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(HomepageApp());

class   HomepageApp extends StatelessWidget {
  const HomepageApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Starting page',
      home: const StartingPage(),

      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}

