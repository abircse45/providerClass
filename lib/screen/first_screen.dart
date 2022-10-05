import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controller/app_controller.dart';
import 'package:provider_class/screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<AppController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${data.value}",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  data.increment();
                },
                child: Text("Add")),

            ElevatedButton(
                onPressed: () {
                  data.decrement();
                },
                child: Text("Minus")),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondScreen()));
                },
                child: Text("Second Screen Route")),
          ],
        ),
      ),
    );
  }
}
