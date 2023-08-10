import 'package:coffee_app/src/models/index.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<Coffee> coffeeList = [];
}
