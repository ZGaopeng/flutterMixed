/*
 * @Author: your name
 * @Date: 2023-05-24 16:28:26
 * @Description: 
 */

import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  int? _count;

  int? get count => _count;

  set count(int? value) {
    _count = value;
    notifyListeners();
  }
}