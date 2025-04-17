import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData extends ChangeNotifier {
  final List<Restaurant> _listRestaurant = [];

  List<Restaurant> get listRestaurant => _listRestaurant;

  Future<void> getRestaurants() async {
    String jsonString = await rootBundle.loadString(
      'assets/restaurant_data.json',
    );
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (final restaurant in restaurantsData) {
      Restaurant convertedRestaurant = Restaurant.fromMap(restaurant);
      _listRestaurant.add(convertedRestaurant);
    }
  }
}
