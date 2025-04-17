import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/data/category_data.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late CategoryData categoryData;

  setUp(() {
    categoryData = CategoryData();
  });

  group('Testes de funcionamento de CategoryData', () {
    test('Lista de categorias deve inicializar vazia', () {
      expect(categoryData.listCategory, isEmpty);
    });

    test('Deve carregar categorias do arquivo JSON', () async {
      await categoryData.getCategories();

      expect(categoryData.listCategory, isNotEmpty);
      expect(categoryData.listCategory.length, greaterThan(0));
    });

    test('Deve carregar categorias corretamente', () async {
      await categoryData.getCategories();

      final firstCategory = categoryData.listCategory.first;

      expect(firstCategory.id, isNotNull);
      expect(firstCategory.name, isNotNull);
    });
  });
}
