import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    notifyListeners();
  }

   decrement(){
    value--;
    notifyListeners();
   }


}
