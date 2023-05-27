import 'package:flutter/material.dart';
import 'package:provider_mvvm/home_screen.dart';
import 'package:provider_mvvm/provider_screen.dart';
import 'package:provider_mvvm/stateful_widget_screen.dart';

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

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProviderScreen(),
    );
  }
}

