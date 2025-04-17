import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/model/dish.dart';

void main() {
  final dishMap = {
    'id': '1',
    'imagePath': 'path/to/image.jpg',
    'name': 'Dish name',
    'description': 'Dish Description',
    'price': 100,
  };

  test('Dish Model retorna classe correta do fromMap', () {
    final dish = Dish.fromMap(dishMap);

    expect(dish.id, '1');
    expect(dish.imagePath, 'path/to/image.jpg');
    expect(dish.name, 'Dish name');
    expect(dish.description, 'Dish Description');
    expect(dish.price, 100);
  });

  test('Dish Model retorna map correto do toMap', () {
    final dish = Dish.fromMap(dishMap);
    final output = dish.toMap();

    expect(output['id'], '1');
    expect(output['imagePath'], 'path/to/image.jpg');
    expect(output['name'], 'Dish name');
    expect(output['description'], 'Dish Description');
    expect(output['price'], 100);
  });
}
