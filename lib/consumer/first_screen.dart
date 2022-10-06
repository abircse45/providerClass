import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controller/app_controller.dart';

import '../screen/second_screen.dart';

  class FirstScreen extends StatelessWidget {
    const FirstScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Consumer"),
          backgroundColor: Colors.red,
        ),
        body: Consumer<AppController>(
          builder: (context,controllerData,child){
            return   Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${controllerData.value}",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        controllerData.increment();
                      },
                      child: Text("Add")),

                  ElevatedButton(
                      onPressed: () {
                        controllerData.decrement();
                      },
                      child: Text("Minus")),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondScreen()));
                      },
                      child: Text("Second Screen Route")),
                ],
              ),
            );
          },
        ),
      );
    }
  }
