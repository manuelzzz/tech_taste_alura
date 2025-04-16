import 'package:myapp/model/dish.dart';

class Restaurant {
  final String id;
  final String imagePath;
  final String name;
  final String description;
  final double stars;
  final int distance;
  final List<String> categories;
  final List<Dish> dishes;

  Restaurant({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.stars,
    required this.distance,
    required this.categories,
    required this.dishes,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'imagePath': imagePath,
    'name': name,
    'description': description,
    'stars': stars,
    'distance': distance,
    'categories': categories,
    'dishes': dishes.map((dish) => dish.toMap()).toList(),
  };

  factory Restaurant.fromMap(Map<String, dynamic> map) => Restaurant(
    id: map['id'],
    imagePath: map['imagePath'],
    name: map['name'],
    description: map['description'],
    stars: map['stars'],
    distance: map['distance'],
    categories: List<String>.from(map['categories']),
    dishes: List<Dish>.from(map['dishes'].map((dish) => Dish.fromMap(dish))),
  );

  @override
  String toString() =>
      'Restaurant(id: $id, imagePath: $imagePath, name: $name, description: $description, stars: $stars, distance: $distance, categories: $categories)';
}
