import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/consumer/first_screen.dart';
import 'package:provider_class/controller/app_controller.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> AppController(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

