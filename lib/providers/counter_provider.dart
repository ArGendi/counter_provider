import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int counter = 0;

  void increment(){
    counter++;
    notifyListeners();
  }

  void minusTwo(){
    counter = counter - 2;
    notifyListeners();
  }
}