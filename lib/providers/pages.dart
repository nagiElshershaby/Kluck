import 'package:flutter/material.dart';

class Pages with ChangeNotifier {
  var _items = [true, false, false,false];

  get items => _items;

  void chooseAPage(int c){
    if(c == 0) {
      alarmOn();
    } else if(c ==1) {
      stopWatchOn();
    } else if(c==2) {
      timerOn();
    } else if(c == 3){
      settingsOn();
    }
    notifyListeners();
  }

  void alarmOn(){
    _items[0] = true;
    _items[1] = false;
    _items[2] = false;
    _items[3] = false;
  }

  void stopWatchOn(){
    _items[0] = false;
    _items[1] = true;
    _items[2] = false;
    _items[3] = false;
  }

  void timerOn(){
    _items[0] = false;
    _items[1] = false;
    _items[2] = true;
    _items[3] = false;
  }
  void settingsOn(){
    _items[0] = false;
    _items[1] = false;
    _items[2] = false;
    _items[3] = true;
  }
}