import 'package:flutter/material.dart';
import 'package:myapp/model/dish.dart';

class BagProvider extends ChangeNotifier {
  final List<Dish> _bag = [];

  List<Dish> get bag => _bag;

  addAllDishes(List<Dish> dishes) {
    _bag.addAll(dishes);
    notifyListeners();
  }

  addDish(Dish dish) {
    _bag.add(dish);
    notifyListeners();
  }

  removeDish(Dish dish) {
    _bag.remove(dish);
    notifyListeners();
  }

  clearBag() {
    _bag.clear();
    notifyListeners();
  }

  Map<Dish, int> getMapByAmount() {
    Map<Dish, int> mapResult = {};

    for (Dish dish in _bag) {
      if (mapResult[dish] == null) {
        mapResult[dish] = 1;
        continue;
      }

      mapResult[dish] = mapResult[dish]! + 1;
    }

    return mapResult;
  }
}
