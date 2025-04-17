import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/model/category.dart';

class CategoryData extends ChangeNotifier {
  final List<Category> _listCategory = [];

  List<Category> get listCategory => _listCategory;

  Future<void> getCategories() async {
    String jsonString = await rootBundle.loadString(
      'assets/category_data.json',
    );
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> categoriesData = data['categories'];

    for (final category in categoriesData) {
      Category convertedCategory = Category.fromMap(category);
      _listCategory.add(convertedCategory);
    }
  }
}
