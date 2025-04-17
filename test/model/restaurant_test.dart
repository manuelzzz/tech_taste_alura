import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/model/restaurant.dart';

void main() {
  final restaurantMap = {
    'id': '1',
    'imagePath': 'path/to/image.jpg',
    'name': 'Restaurant Name',
    'description': 'Restaurant Description',
    'stars': 4.5,
    'distance': 500,
    'categories': ['Category 1', 'Category 2'],
    'dishes': [
      {
        'id': '1',
        'imagePath': 'path/to/dish_image.jpg',
        'name': 'Dish Name',
        'description': 'Dish Description',
        'price': 100,
      },
    ],
  };

  test('Restaurant Model retorna classe correta do fromMap', () {
    final restaurant = Restaurant.fromMap(restaurantMap);

    expect(restaurant.id, '1');
    expect(restaurant.imagePath, 'path/to/image.jpg');
    expect(restaurant.name, 'Restaurant Name');
    expect(restaurant.description, 'Restaurant Description');
    expect(restaurant.stars, 4.5);
    expect(restaurant.distance, 500);
    expect(restaurant.categories, ['Category 1', 'Category 2']);
    expect(restaurant.dishes.length, 1);
    expect(restaurant.dishes[0].id, '1');
    expect(restaurant.dishes[0].imagePath, 'path/to/dish_image.jpg');
    expect(restaurant.dishes[0].name, 'Dish Name');
    expect(restaurant.dishes[0].description, 'Dish Description');
    expect(restaurant.dishes[0].price, 100);
  });

  test('Restaurant Model retorna map correto do toMap', () {
    final restaurant = Restaurant.fromMap(restaurantMap);
    final output = restaurant.toMap();

    expect(output['id'], '1');
    expect(output['imagePath'], 'path/to/image.jpg');
    expect(output['name'], 'Restaurant Name');
    expect(output['description'], 'Restaurant Description');
    expect(output['stars'], 4.5);
    expect(output['distance'], 500);
    expect(output['categories'], ['Category 1', 'Category 2']);
    expect(output['dishes'].length, 1);
    expect(output['dishes'][0]['id'], '1');
    expect(output['dishes'][0]['imagePath'], 'path/to/dish_image.jpg');
    expect(output['dishes'][0]['name'], 'Dish Name');
    expect(output['dishes'][0]['description'], 'Dish Description');
    expect(output['dishes'][0]['price'], 100);
  });
}
