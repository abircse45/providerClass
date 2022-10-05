import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controller/app_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final seconddata = Provider.of<AppController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("${seconddata.value}",style: TextStyle(fontSize: 40),),
      ),
    );
  }
}
