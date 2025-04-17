import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/model/category.dart';

void main() {
  final categoryMap = {'id': '1', 'name': 'Category Name'};

  test('Category Model retorna classe correta do fromMap', () {
    final category = Category.fromMap(categoryMap);

    expect(category.id, '1');
    expect(category.name, 'Category Name');
  });

  test('Category Model retorna map correto do toMap', () {
    final category = Category.fromMap(categoryMap);
    final output = category.toMap();

    expect(output['id'], '1');
    expect(output['name'], 'Category Name');
  });
}
